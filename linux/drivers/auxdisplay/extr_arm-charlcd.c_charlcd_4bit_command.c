
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct charlcd {scalar_t__ virtbase; } ;


 scalar_t__ CHAR_COM ;
 int charlcd_4bit_wait_busy (struct charlcd*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void charlcd_4bit_command(struct charlcd *lcd, u8 cmd)
{
 u32 cmdlo = (cmd << 4) & 0xf0;
 u32 cmdhi = (cmd & 0xf0);

 writel(cmdhi, lcd->virtbase + CHAR_COM);
 udelay(10);
 writel(cmdlo, lcd->virtbase + CHAR_COM);
 charlcd_4bit_wait_busy(lcd);
}
