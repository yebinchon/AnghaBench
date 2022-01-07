
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FLASH_BASE ;
 unsigned int volatile KFLASH_ID4 ;
 int KFLASH_SIZE4 ;
 int gbFlashSize ;
 unsigned int inb (int) ;
 int kick_open () ;
 int udelay (int) ;

__attribute__((used)) static int get_flash_id(void)
{
 volatile unsigned int c1, c2;




 kick_open();
 c2 = inb(0x80);
 *(volatile unsigned char *) (FLASH_BASE + 0x8000) = 0x90;
 udelay(15);
 c1 = *(volatile unsigned char *) FLASH_BASE;
 c2 = inb(0x80);




 if (c1 == 0xB0)
  c2 = *(volatile unsigned char *) (FLASH_BASE + 2);
 else
  c2 = *(volatile unsigned char *) (FLASH_BASE + 1);

 c2 += (c1 << 8);




 *(volatile unsigned char *) (FLASH_BASE + 0x8000) = 0xFF;

 if (c2 == KFLASH_ID4)
  gbFlashSize = KFLASH_SIZE4;

 return c2;
}
