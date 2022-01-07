
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_platform_data {int (* clkdm_allow_idle ) (int ,int *) ;} ;
struct sysc {int cookie; int dev; scalar_t__ legacy_mode; } ;


 struct ti_sysc_platform_data* dev_get_platdata (int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void sysc_clkdm_allow_idle(struct sysc *ddata)
{
 struct ti_sysc_platform_data *pdata;

 if (ddata->legacy_mode)
  return;

 pdata = dev_get_platdata(ddata->dev);
 if (pdata && pdata->clkdm_allow_idle)
  pdata->clkdm_allow_idle(ddata->dev, &ddata->cookie);
}
