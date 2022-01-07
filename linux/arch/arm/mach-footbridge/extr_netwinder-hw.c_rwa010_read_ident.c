
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_RWA (int,int) ;
 int dprintk (char*,...) ;
 int inb (int) ;
 int mdelay (int) ;
 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static inline void rwa010_read_ident(void)
{
 unsigned char si[9];
 int i, j;

 WRITE_RWA(3, 0);
 WRITE_RWA(0, 128);

 outb(1, 0x279);

 mdelay(1);

 dprintk("Identifier: ");
 for (i = 0; i < 9; i++) {
  si[i] = 0;
  for (j = 0; j < 8; j++) {
   int bit;
   udelay(250);
   inb(0x203);
   udelay(250);
   bit = inb(0x203);
   dprintk("%02X ", bit);
   bit = (bit == 0xaa) ? 1 : 0;
   si[i] |= bit << j;
  }
  dprintk("(%02X) ", si[i]);
 }
 dprintk("\n");
}
