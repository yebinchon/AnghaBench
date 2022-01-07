
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {scalar_t__ virtbase; } ;


 scalar_t__ CHAR_COM ;
 int HD_CLEAR ;
 int HD_DISPCTRL ;
 int HD_DISPCTRL_ON ;
 int HD_ENTRYMODE ;
 int HD_ENTRYMODE_INCREMENT ;
 int HD_FUNCSET ;
 int HD_FUNCSET_2_LINES ;
 int HD_FUNCSET_8BIT ;
 int HD_HOME ;
 char* UTS_RELEASE ;
 int charlcd_4bit_command (struct charlcd*,int) ;
 int charlcd_4bit_print (struct charlcd*,int,char*) ;
 int msleep (int) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void charlcd_4bit_init(struct charlcd *lcd)
{

 writel(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
 msleep(5);
 writel(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
 udelay(100);
 writel(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
 udelay(100);

 writel(HD_FUNCSET, lcd->virtbase + CHAR_COM);
 udelay(100);




 charlcd_4bit_command(lcd, HD_FUNCSET | HD_FUNCSET_2_LINES);
 charlcd_4bit_command(lcd, HD_DISPCTRL | HD_DISPCTRL_ON);
 charlcd_4bit_command(lcd, HD_ENTRYMODE | HD_ENTRYMODE_INCREMENT);
 charlcd_4bit_command(lcd, HD_CLEAR);
 charlcd_4bit_command(lcd, HD_HOME);

 charlcd_4bit_print(lcd, 0, "ARM Linux");
 charlcd_4bit_print(lcd, 1, UTS_RELEASE);
}
