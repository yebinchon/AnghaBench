
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crng_state {unsigned long* state; scalar_t__ init_time; } ;
typedef int __u32 ;


 scalar_t__ CRNG_RESEED_INTERVAL ;
 int _extract_entropy (int *,unsigned long*,int,int ) ;
 int _get_random_bytes (unsigned long*,int) ;
 int arch_get_random_long (unsigned long*) ;
 int arch_get_random_seed_long (unsigned long*) ;
 int crng_init ;
 int input_pool ;
 int invalidate_batched_entropy () ;
 scalar_t__ jiffies ;
 int memcpy (unsigned long*,char*,int) ;
 int numa_crng_init () ;
 int pr_notice (char*) ;
 struct crng_state primary_crng ;
 unsigned long random_get_entropy () ;
 scalar_t__ trust_cpu ;

__attribute__((used)) static void crng_initialize(struct crng_state *crng)
{
 int i;
 int arch_init = 1;
 unsigned long rv;

 memcpy(&crng->state[0], "expand 32-byte k", 16);
 if (crng == &primary_crng)
  _extract_entropy(&input_pool, &crng->state[4],
     sizeof(__u32) * 12, 0);
 else
  _get_random_bytes(&crng->state[4], sizeof(__u32) * 12);
 for (i = 4; i < 16; i++) {
  if (!arch_get_random_seed_long(&rv) &&
      !arch_get_random_long(&rv)) {
   rv = random_get_entropy();
   arch_init = 0;
  }
  crng->state[i] ^= rv;
 }
 if (trust_cpu && arch_init && crng == &primary_crng) {
  invalidate_batched_entropy();
  numa_crng_init();
  crng_init = 2;
  pr_notice("random: crng done (trusting CPU's manufacturer)\n");
 }
 crng->init_time = jiffies - CRNG_RESEED_INTERVAL - 1;
}
