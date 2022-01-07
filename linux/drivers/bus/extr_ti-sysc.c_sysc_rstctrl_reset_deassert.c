
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int rsts; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int sysc_rstctrl_reset_deassert(struct sysc *ddata, bool reset)
{
 int error;

 if (!ddata->rsts)
  return 0;

 if (reset) {
  error = reset_control_assert(ddata->rsts);
  if (error)
   return error;
 }

 reset_control_deassert(ddata->rsts);

 return 0;
}
