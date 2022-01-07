
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_reconfig_data {TYPE_1__* prop; int dn; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int name; } ;





 int notifier_from_errno (int) ;
 int pseries_add_mem_node (int ) ;
 int pseries_remove_mem_node (int ) ;
 int pseries_update_drconf_memory (struct of_reconfig_data*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int pseries_memory_notifier(struct notifier_block *nb,
       unsigned long action, void *data)
{
 struct of_reconfig_data *rd = data;
 int err = 0;

 switch (action) {
 case 130:
  err = pseries_add_mem_node(rd->dn);
  break;
 case 129:
  err = pseries_remove_mem_node(rd->dn);
  break;
 case 128:
  if (!strcmp(rd->prop->name, "ibm,dynamic-memory"))
   err = pseries_update_drconf_memory(rd);
  break;
 }
 return notifier_from_errno(err);
}
