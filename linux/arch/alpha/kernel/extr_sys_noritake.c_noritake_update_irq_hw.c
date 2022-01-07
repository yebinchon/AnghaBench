
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outw (int,int) ;

__attribute__((used)) static inline void
noritake_update_irq_hw(int irq, int mask)
{
 int port = 0x54a;
 if (irq >= 32) {
     mask >>= 16;
     port = 0x54c;
 }
 outw(mask, port);
}
