
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dummy; } ;


 int sysc_clk_quirk_i2c (struct sysc*,int) ;

__attribute__((used)) static void sysc_clk_enable_quirk_i2c(struct sysc *ddata)
{
 sysc_clk_quirk_i2c(ddata, 1);
}
