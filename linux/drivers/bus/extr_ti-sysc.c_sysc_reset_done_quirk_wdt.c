
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysc {int dev; scalar_t__ module_va; } ;


 int MAX_MODULE_SOFTRESET_WAIT ;
 int dev_warn (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;
 int sysc_write (struct sysc*,int,int) ;

__attribute__((used)) static void sysc_reset_done_quirk_wdt(struct sysc *ddata)
{
 int wps, spr, error;
 u32 val;

 wps = 0x34;
 spr = 0x48;

 sysc_write(ddata, spr, 0xaaaa);
 error = readl_poll_timeout(ddata->module_va + wps, val,
       !(val & 0x10), 100,
       MAX_MODULE_SOFTRESET_WAIT);
 if (error)
  dev_warn(ddata->dev, "wdt disable step1 failed\n");

 sysc_write(ddata, spr, 0x5555);
 error = readl_poll_timeout(ddata->module_va + wps, val,
       !(val & 0x10), 100,
       MAX_MODULE_SOFTRESET_WAIT);
 if (error)
  dev_warn(ddata->dev, "wdt disable step2 failed\n");
}
