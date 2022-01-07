
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct charlcd {scalar_t__ virtbase; } ;


 scalar_t__ CHAR_DAT ;
 int charlcd_4bit_wait_busy (struct charlcd*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void charlcd_4bit_char(struct charlcd *lcd, u8 ch)
{
 u32 chlo = (ch << 4) & 0xf0;
 u32 chhi = (ch & 0xf0);

 writel(chhi, lcd->virtbase + CHAR_DAT);
 udelay(10);
 writel(chlo, lcd->virtbase + CHAR_DAT);
 charlcd_4bit_wait_busy(lcd);
}
