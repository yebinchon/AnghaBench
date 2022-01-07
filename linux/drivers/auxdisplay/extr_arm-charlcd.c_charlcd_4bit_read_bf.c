
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {scalar_t__ irq; scalar_t__ virtbase; int complete; } ;


 scalar_t__ CHAR_COM ;
 scalar_t__ CHAR_MASK ;
 scalar_t__ CHAR_RAW ;
 int CHAR_RAW_CLEAR ;
 int HD_BUSY_FLAG ;
 int charlcd_4bit_read_char (struct charlcd*) ;
 int init_completion (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static bool charlcd_4bit_read_bf(struct charlcd *lcd)
{
 if (lcd->irq >= 0) {




  writel(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
  init_completion(&lcd->complete);
  writel(0x01, lcd->virtbase + CHAR_MASK);
 }
 readl(lcd->virtbase + CHAR_COM);
 return charlcd_4bit_read_char(lcd) & HD_BUSY_FLAG ? 1 : 0;
}
