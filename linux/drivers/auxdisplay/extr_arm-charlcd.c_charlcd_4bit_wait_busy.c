
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dev; } ;


 scalar_t__ charlcd_4bit_read_bf (struct charlcd*) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void charlcd_4bit_wait_busy(struct charlcd *lcd)
{
 int retries = 50;

 udelay(100);
 while (charlcd_4bit_read_bf(lcd) && retries)
  retries--;
 if (!retries)
  dev_err(lcd->dev, "timeout waiting for busyflag\n");
}
