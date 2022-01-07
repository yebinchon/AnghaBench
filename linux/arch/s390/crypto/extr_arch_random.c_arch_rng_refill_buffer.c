
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct work_struct {int dummy; } ;
typedef int seed ;
typedef int prng_wa ;


 int ARCH_PRNG_SEED_SIZE ;
 unsigned int ARCH_REFILL_TICKS ;
 unsigned int ARCH_RNG_BUF_SIZE ;
 int CPACF_PRNO_SHA512_DRNG_GEN ;
 int CPACF_PRNO_SHA512_DRNG_SEED ;
 int * arch_rng_buf ;
 unsigned int arch_rng_buf_idx ;
 int arch_rng_lock ;
 int arch_rng_work ;
 int cpacf_prno (int ,int **,int *,unsigned int,int *,int) ;
 int cpacf_trng (int *,int ,int *,int) ;
 int memset (int *,int ,int) ;
 int queue_delayed_work (int ,int *,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_long_wq ;

__attribute__((used)) static void arch_rng_refill_buffer(struct work_struct *unused)
{
 unsigned int delay = ARCH_REFILL_TICKS;

 spin_lock(&arch_rng_lock);
 if (arch_rng_buf_idx > ARCH_RNG_BUF_SIZE) {

  u8 seed[ARCH_PRNG_SEED_SIZE];
  u8 prng_wa[240];

  cpacf_trng(((void*)0), 0, seed, sizeof(seed));

  memset(prng_wa, 0, sizeof(prng_wa));
  cpacf_prno(CPACF_PRNO_SHA512_DRNG_SEED,
      &prng_wa, ((void*)0), 0, seed, sizeof(seed));
  cpacf_prno(CPACF_PRNO_SHA512_DRNG_GEN,
      &prng_wa, arch_rng_buf, ARCH_RNG_BUF_SIZE, ((void*)0), 0);
  arch_rng_buf_idx = ARCH_RNG_BUF_SIZE;
 }
 delay += (ARCH_REFILL_TICKS * arch_rng_buf_idx) / ARCH_RNG_BUF_SIZE;
 spin_unlock(&arch_rng_lock);


 queue_delayed_work(system_long_wq, &arch_rng_work, delay);
}
