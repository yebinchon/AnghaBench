
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entropy_store {int dummy; } ;


 scalar_t__ ENTROPY_BITS (struct entropy_store*) ;
 int credit_entropy_bits (struct entropy_store*,size_t) ;
 int crng_fast_load (char const*,size_t) ;
 scalar_t__ crng_init ;
 struct entropy_store input_pool ;
 scalar_t__ kthread_should_stop () ;
 int mix_pool_bytes (struct entropy_store*,char const*,size_t) ;
 int random_write_wait ;
 scalar_t__ random_write_wakeup_bits ;
 scalar_t__ unlikely (int) ;
 int wait_event_freezable (int ,int) ;

void add_hwgenerator_randomness(const char *buffer, size_t count,
    size_t entropy)
{
 struct entropy_store *poolp = &input_pool;

 if (unlikely(crng_init == 0)) {
  crng_fast_load(buffer, count);
  return;
 }





 wait_event_freezable(random_write_wait,
   kthread_should_stop() ||
   ENTROPY_BITS(&input_pool) <= random_write_wakeup_bits);
 mix_pool_bytes(poolp, buffer, count);
 credit_entropy_bits(poolp, entropy);
}
