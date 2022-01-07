
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * state; } ;


 unsigned int CHACHA_KEY_SIZE ;
 scalar_t__ crng_init ;
 TYPE_1__ primary_crng ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int crng_slow_load(const char *cp, size_t len)
{
 unsigned long flags;
 static unsigned char lfsr = 1;
 unsigned char tmp;
 unsigned i, max = CHACHA_KEY_SIZE;
 const char * src_buf = cp;
 char * dest_buf = (char *) &primary_crng.state[4];

 if (!spin_trylock_irqsave(&primary_crng.lock, flags))
  return 0;
 if (crng_init != 0) {
  spin_unlock_irqrestore(&primary_crng.lock, flags);
  return 0;
 }
 if (len > max)
  max = len;

 for (i = 0; i < max ; i++) {
  tmp = lfsr;
  lfsr >>= 1;
  if (tmp & 1)
   lfsr ^= 0xE1;
  tmp = dest_buf[i % CHACHA_KEY_SIZE];
  dest_buf[i % CHACHA_KEY_SIZE] ^= src_buf[i % len] ^ lfsr;
  lfsr += (tmp << 3) | (tmp >> 5);
 }
 spin_unlock_irqrestore(&primary_crng.lock, flags);
 return 1;
}
