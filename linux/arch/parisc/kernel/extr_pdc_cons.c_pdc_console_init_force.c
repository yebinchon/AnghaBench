
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cl_class; } ;
struct TYPE_4__ {TYPE_1__ mem_cons; int mem_kbd; } ;


 scalar_t__ CL_DUPLEX ;
 TYPE_2__* PAGE0 ;
 int memcpy (int *,TYPE_1__*,int) ;
 int pdc_cons ;
 scalar_t__ pdc_console_initialized ;
 int register_console (int *) ;

__attribute__((used)) static void pdc_console_init_force(void)
{
 if (pdc_console_initialized)
  return;
 ++pdc_console_initialized;


 if (PAGE0->mem_cons.cl_class == CL_DUPLEX)
  memcpy(&PAGE0->mem_kbd, &PAGE0->mem_cons, sizeof(PAGE0->mem_cons));


 register_console(&pdc_cons);
}
