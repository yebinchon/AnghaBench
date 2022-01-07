
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int drc_index; int drc_count; } ;
struct pseries_hp_errorlog {int action; int id_type; TYPE_1__ _drc_u; } ;


 int EINVAL ;


 int PSERIES_HP_ELOG_ID_DRC_COUNT ;
 int PSERIES_HP_ELOG_ID_DRC_INDEX ;
 int dlpar_cpu_add (int ) ;
 int dlpar_cpu_add_by_count (int ) ;
 int dlpar_cpu_remove_by_count (int ) ;
 int dlpar_cpu_remove_by_index (int ) ;
 int lock_device_hotplug () ;
 int pr_err (char*,int) ;
 int unlock_device_hotplug () ;

int dlpar_cpu(struct pseries_hp_errorlog *hp_elog)
{
 u32 count, drc_index;
 int rc;

 count = hp_elog->_drc_u.drc_count;
 drc_index = hp_elog->_drc_u.drc_index;

 lock_device_hotplug();

 switch (hp_elog->action) {
 case 128:
  if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_COUNT)
   rc = dlpar_cpu_remove_by_count(count);
  else if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_INDEX)
   rc = dlpar_cpu_remove_by_index(drc_index);
  else
   rc = -EINVAL;
  break;
 case 129:
  if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_COUNT)
   rc = dlpar_cpu_add_by_count(count);
  else if (hp_elog->id_type == PSERIES_HP_ELOG_ID_DRC_INDEX)
   rc = dlpar_cpu_add(drc_index);
  else
   rc = -EINVAL;
  break;
 default:
  pr_err("Invalid action (%d) specified\n", hp_elog->action);
  rc = -EINVAL;
  break;
 }

 unlock_device_hotplug();
 return rc;
}
