
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int entropy_count; int initialized; int push_work; TYPE_1__* poolinfo; int name; } ;
struct TYPE_2__ {int poolfracbits; int poolbitshift; int poolbytes; } ;


 int ENTROPY_BITS (struct entropy_store*) ;
 int ENTROPY_SHIFT ;
 int POLL_IN ;
 int READ_ONCE (int) ;
 int SIGIO ;
 int WARN_ON (int) ;
 int _RET_IP_ ;
 struct entropy_store blocking_pool ;
 int cmpxchg (int*,int,int) ;
 int crng_init ;
 int crng_reseed (int *,struct entropy_store*) ;
 int fasync ;
 struct entropy_store input_pool ;
 int kill_fasync (int *,int ,int ) ;
 unsigned int min (int,int const) ;
 int pr_warn (char*,int ,int) ;
 int primary_crng ;
 int random_read_wait ;
 int random_read_wakeup_bits ;
 int schedule_work (int *) ;
 int trace_credit_entropy_bits (int ,int,int,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;
 int work_pending (int *) ;
 scalar_t__ wq_has_sleeper (int *) ;

__attribute__((used)) static void credit_entropy_bits(struct entropy_store *r, int nbits)
{
 int entropy_count, orig, has_initialized = 0;
 const int pool_size = r->poolinfo->poolfracbits;
 int nfrac = nbits << ENTROPY_SHIFT;

 if (!nbits)
  return;

retry:
 entropy_count = orig = READ_ONCE(r->entropy_count);
 if (nfrac < 0) {

  entropy_count += nfrac;
 } else {
  int pnfrac = nfrac;
  const int s = r->poolinfo->poolbitshift + ENTROPY_SHIFT + 2;


  do {
   unsigned int anfrac = min(pnfrac, pool_size/2);
   unsigned int add =
    ((pool_size - entropy_count)*anfrac*3) >> s;

   entropy_count += add;
   pnfrac -= anfrac;
  } while (unlikely(entropy_count < pool_size-2 && pnfrac));
 }

 if (unlikely(entropy_count < 0)) {
  pr_warn("random: negative entropy/overflow: pool %s count %d\n",
   r->name, entropy_count);
  WARN_ON(1);
  entropy_count = 0;
 } else if (entropy_count > pool_size)
  entropy_count = pool_size;
 if ((r == &blocking_pool) && !r->initialized &&
     (entropy_count >> ENTROPY_SHIFT) > 128)
  has_initialized = 1;
 if (cmpxchg(&r->entropy_count, orig, entropy_count) != orig)
  goto retry;

 if (has_initialized) {
  r->initialized = 1;
  wake_up_interruptible(&random_read_wait);
  kill_fasync(&fasync, SIGIO, POLL_IN);
 }

 trace_credit_entropy_bits(r->name, nbits,
      entropy_count >> ENTROPY_SHIFT, _RET_IP_);

 if (r == &input_pool) {
  int entropy_bits = entropy_count >> ENTROPY_SHIFT;
  struct entropy_store *other = &blocking_pool;

  if (crng_init < 2) {
   if (entropy_bits < 128)
    return;
   crng_reseed(&primary_crng, r);
   entropy_bits = r->entropy_count >> ENTROPY_SHIFT;
  }


  if (entropy_bits >= random_read_wakeup_bits &&
      !other->initialized) {
   schedule_work(&other->push_work);
   return;
  }


  if (entropy_bits >= random_read_wakeup_bits &&
      wq_has_sleeper(&random_read_wait)) {
   wake_up_interruptible(&random_read_wait);
   kill_fasync(&fasync, SIGIO, POLL_IN);
  }




  if (!work_pending(&other->push_work) &&
      (ENTROPY_BITS(r) > 6 * r->poolinfo->poolbytes) &&
      (ENTROPY_BITS(other) <= 6 * other->poolinfo->poolbytes))
   schedule_work(&other->push_work);
 }
}
