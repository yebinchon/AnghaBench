
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int drc_index; } ;
struct pseries_hp_errorlog {scalar_t__ id_type; scalar_t__ action; TYPE_1__ _drc_u; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ PSERIES_HP_ELOG_ACTION_ADD ;
 scalar_t__ PSERIES_HP_ELOG_ACTION_REMOVE ;
 scalar_t__ PSERIES_HP_ELOG_ID_DRC_INDEX ;
 int lock_device_hotplug () ;
 scalar_t__ of_find_node_by_type (int *,char*) ;
 int pmem_drc_add_node (int ) ;
 int pmem_drc_remove_node (int ) ;
 scalar_t__ pmem_node ;
 int pr_err (char*,...) ;
 int unlock_device_hotplug () ;

int dlpar_hp_pmem(struct pseries_hp_errorlog *hp_elog)
{
 u32 drc_index;
 int rc;


 if (!pmem_node)
  pmem_node = of_find_node_by_type(((void*)0), "ibm,persistent-memory");
 if (!pmem_node) {
  pr_err("Hotplug event for a pmem device, but none exists\n");
  return -ENODEV;
 }

 if (hp_elog->id_type != PSERIES_HP_ELOG_ID_DRC_INDEX) {
  pr_err("Unsupported hotplug event type %d\n",
    hp_elog->id_type);
  return -EINVAL;
 }

 drc_index = hp_elog->_drc_u.drc_index;

 lock_device_hotplug();

 if (hp_elog->action == PSERIES_HP_ELOG_ACTION_ADD) {
  rc = pmem_drc_add_node(drc_index);
 } else if (hp_elog->action == PSERIES_HP_ELOG_ACTION_REMOVE) {
  rc = pmem_drc_remove_node(drc_index);
 } else {
  pr_err("Unsupported hotplug action (%d)\n", hp_elog->action);
  rc = -EINVAL;
 }

 unlock_device_hotplug();
 return rc;
}
