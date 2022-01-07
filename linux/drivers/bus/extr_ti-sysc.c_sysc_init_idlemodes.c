
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sidlemodes; int midlemodes; } ;
struct sysc {TYPE_1__ cfg; } ;


 int sysc_init_idlemode (struct sysc*,int *,char*) ;

__attribute__((used)) static int sysc_init_idlemodes(struct sysc *ddata)
{
 int error;

 error = sysc_init_idlemode(ddata, &ddata->cfg.midlemodes,
       "ti,sysc-midle");
 if (error)
  return error;

 error = sysc_init_idlemode(ddata, &ddata->cfg.sidlemodes,
       "ti,sysc-sidle");
 if (error)
  return error;

 return 0;
}
