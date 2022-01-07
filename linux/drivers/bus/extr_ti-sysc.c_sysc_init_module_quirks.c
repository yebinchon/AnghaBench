
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct sysc {void* module_disable_quirk; void* reset_done_quirk; TYPE_1__ cfg; int module_enable_quirk; int clk_disable_quirk; int clk_enable_quirk; int name; scalar_t__ legacy_mode; } ;


 int SYSC_MODULE_QUIRK_HDQ1W ;
 int SYSC_MODULE_QUIRK_I2C ;
 int SYSC_MODULE_QUIRK_SGX ;
 int SYSC_MODULE_QUIRK_WDT ;
 int sysc_clk_disable_quirk_i2c ;
 int sysc_clk_enable_quirk_hdq1w ;
 int sysc_clk_enable_quirk_i2c ;
 int sysc_module_enable_quirk_sgx ;
 void* sysc_reset_done_quirk_wdt ;

__attribute__((used)) static void sysc_init_module_quirks(struct sysc *ddata)
{
 if (ddata->legacy_mode || !ddata->name)
  return;

 if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_HDQ1W) {
  ddata->clk_enable_quirk = sysc_clk_enable_quirk_hdq1w;

  return;
 }

 if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_I2C) {
  ddata->clk_enable_quirk = sysc_clk_enable_quirk_i2c;
  ddata->clk_disable_quirk = sysc_clk_disable_quirk_i2c;

  return;
 }

 if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_SGX)
  ddata->module_enable_quirk = sysc_module_enable_quirk_sgx;

 if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_WDT) {
  ddata->reset_done_quirk = sysc_reset_done_quirk_wdt;
  ddata->module_disable_quirk = sysc_reset_done_quirk_wdt;
 }
}
