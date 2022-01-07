
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardinfo {scalar_t__ csr_remap; } ;


 unsigned char LED_FLIP ;
 scalar_t__ MEMCTRLCMD_LEDCTRL ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void set_led(struct cardinfo *card, int shift, unsigned char state)
{
 unsigned char led;

 led = readb(card->csr_remap + MEMCTRLCMD_LEDCTRL);
 if (state == LED_FLIP)
  led ^= (1<<shift);
 else {
  led &= ~(0x03 << shift);
  led |= (state << shift);
 }
 writeb(led, card->csr_remap + MEMCTRLCMD_LEDCTRL);

}
