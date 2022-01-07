
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int module_size; int module_pa; int dev; } ;


 int SYSC_MAX_REGS ;
 int dev_dbg (int ,char*,int ,int ,char*) ;
 int sysc_show_name (char*,struct sysc*) ;
 int sysc_show_reg (struct sysc*,char*,int) ;
 int sysc_show_rev (char*,struct sysc*) ;

__attribute__((used)) static void sysc_show_registers(struct sysc *ddata)
{
 char buf[128];
 char *bufp = buf;
 int i;

 for (i = 0; i < SYSC_MAX_REGS; i++)
  bufp += sysc_show_reg(ddata, bufp, i);

 bufp += sysc_show_rev(bufp, ddata);
 bufp += sysc_show_name(bufp, ddata);

 dev_dbg(ddata->dev, "%llx:%x%s\n",
  ddata->module_pa, ddata->module_size,
  buf);
}
