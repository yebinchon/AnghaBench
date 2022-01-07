
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*,...) ;
 int inb (int) ;
 int mdelay (int) ;
 int outb (int,int) ;
 int printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static void rwa010_soundblaster_reset(void)
{
 int i;

 outb(1, 0x226);
 udelay(3);
 outb(0, 0x226);

 for (i = 0; i < 5; i++) {
  if (inb(0x22e) & 0x80)
   break;
  mdelay(1);
 }
 if (i == 5)
  printk("SoundBlaster: DSP reset failed\n");

 dprintk("SoundBlaster DSP reset: %02X (AA)\n", inb(0x22a));

 for (i = 0; i < 5; i++) {
  if ((inb(0x22c) & 0x80) == 0)
   break;
  mdelay(1);
 }

 if (i == 5)
  printk("SoundBlaster: DSP not ready\n");
 else {
  outb(0xe1, 0x22c);

  dprintk("SoundBlaster DSP id: ");
  i = inb(0x22a);
  udelay(1);
  i |= inb(0x22a) << 8;
  dprintk("%04X\n", i);

  for (i = 0; i < 5; i++) {
   if ((inb(0x22c) & 0x80) == 0)
    break;
   mdelay(1);
  }

  if (i == 5)
   printk("SoundBlaster: could not turn speaker off\n");

  outb(0xd3, 0x22c);
 }


 outb(5, 0x38a);
 outb(1, 0x38b);
}
