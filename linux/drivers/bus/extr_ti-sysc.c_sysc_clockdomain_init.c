
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_platform_data {int (* init_clockdomain ) (int ,struct clk*,struct clk*,int *) ;} ;
struct sysc {int nr_clocks; int cookie; int dev; struct clk** clocks; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 size_t SYSC_FCK ;
 size_t SYSC_ICK ;
 struct ti_sysc_platform_data* dev_get_platdata (int ) ;
 int stub1 (int ,struct clk*,struct clk*,int *) ;

__attribute__((used)) static int sysc_clockdomain_init(struct sysc *ddata)
{
 struct ti_sysc_platform_data *pdata = dev_get_platdata(ddata->dev);
 struct clk *fck = ((void*)0), *ick = ((void*)0);
 int error;

 if (!pdata || !pdata->init_clockdomain)
  return 0;

 switch (ddata->nr_clocks) {
 case 2:
  ick = ddata->clocks[SYSC_ICK];

 case 1:
  fck = ddata->clocks[SYSC_FCK];
  break;
 case 0:
  return 0;
 }

 error = pdata->init_clockdomain(ddata->dev, fck, ick, &ddata->cookie);
 if (!error || error == -ENODEV)
  return 0;

 return error;
}
