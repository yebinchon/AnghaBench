
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * state; } ;


 size_t CHACHA_KEY_SIZE ;
 size_t CRNG_INIT_CNT_THRESH ;
 int crng_init ;
 size_t crng_init_cnt ;
 int crng_init_wait ;
 int invalidate_batched_entropy () ;
 int pr_notice (char*) ;
 TYPE_1__ primary_crng ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int crng_fast_load(const char *cp, size_t len)
{
 unsigned long flags;
 char *p;

 if (!spin_trylock_irqsave(&primary_crng.lock, flags))
  return 0;
 if (crng_init != 0) {
  spin_unlock_irqrestore(&primary_crng.lock, flags);
  return 0;
 }
 p = (unsigned char *) &primary_crng.state[4];
 while (len > 0 && crng_init_cnt < CRNG_INIT_CNT_THRESH) {
  p[crng_init_cnt % CHACHA_KEY_SIZE] ^= *cp;
  cp++; crng_init_cnt++; len--;
 }
 spin_unlock_irqrestore(&primary_crng.lock, flags);
 if (crng_init_cnt >= CRNG_INIT_CNT_THRESH) {
  invalidate_batched_entropy();
  crng_init = 1;
  wake_up_interruptible(&crng_init_wait);
  pr_notice("random: fast init done\n");
 }
 return 1;
}
