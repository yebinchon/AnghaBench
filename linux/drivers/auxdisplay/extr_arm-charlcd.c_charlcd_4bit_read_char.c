
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct charlcd {scalar_t__ irq; scalar_t__ virtbase; } ;


 scalar_t__ CHAR_RAW ;
 int CHAR_RAW_CLEAR ;
 int CHAR_RAW_VALID ;
 scalar_t__ CHAR_RD ;
 int charlcd_wait_complete_irq (struct charlcd*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static u8 charlcd_4bit_read_char(struct charlcd *lcd)
{
 u8 data;
 u32 val;
 int i;


 if (lcd->irq >= 0)
  charlcd_wait_complete_irq(lcd);
 else {
  i = 0;
  val = 0;
  while (!(val & CHAR_RAW_VALID) && i < 10) {
   udelay(100);
   val = readl(lcd->virtbase + CHAR_RAW);
   i++;
  }

  writel(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
 }
 msleep(1);


 data = readl(lcd->virtbase + CHAR_RD) & 0xf0;





 i = 0;
 val = 0;
 while (!(val & CHAR_RAW_VALID) && i < 10) {
  udelay(100);
  val = readl(lcd->virtbase + CHAR_RAW);
  i++;
 }
 writel(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
 msleep(1);


 data |= (readl(lcd->virtbase + CHAR_RD) >> 4) & 0x0f;

 return data;
}
