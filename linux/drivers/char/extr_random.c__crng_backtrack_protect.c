
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crng_state {int lock; int * state; } ;
typedef int __u8 ;
typedef int __u32 ;


 scalar_t__ CHACHA_BLOCK_SIZE ;
 scalar_t__ CHACHA_KEY_SIZE ;
 int extract_crng (int *) ;
 int round_up (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _crng_backtrack_protect(struct crng_state *crng,
        __u8 tmp[CHACHA_BLOCK_SIZE], int used)
{
 unsigned long flags;
 __u32 *s, *d;
 int i;

 used = round_up(used, sizeof(__u32));
 if (used + CHACHA_KEY_SIZE > CHACHA_BLOCK_SIZE) {
  extract_crng(tmp);
  used = 0;
 }
 spin_lock_irqsave(&crng->lock, flags);
 s = (__u32 *) &tmp[used];
 d = &crng->state[4];
 for (i=0; i < 8; i++)
  *d++ ^= *s++;
 spin_unlock_irqrestore(&crng->lock, flags);
}
