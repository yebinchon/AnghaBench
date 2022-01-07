
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int index; int count; } ;
struct TYPE_4__ {int drc_index; TYPE_1__ ic; int drc_count; } ;
struct pseries_hp_errorlog {int action; TYPE_2__ _drc_u; int id_type; } ;


 int EINVAL ;






 int dlpar_memory_add_by_count (int ) ;
 int dlpar_memory_add_by_ic (int ,int ) ;
 int dlpar_memory_add_by_index (int ) ;
 int dlpar_memory_readd_by_index (int ) ;
 int dlpar_memory_remove_by_count (int ) ;
 int dlpar_memory_remove_by_ic (int ,int ) ;
 int dlpar_memory_remove_by_index (int ) ;
 int drmem_update_dt () ;
 int lock_device_hotplug () ;
 int pr_err (char*,int) ;
 int rtas_hp_event ;
 int unlock_device_hotplug () ;

int dlpar_memory(struct pseries_hp_errorlog *hp_elog)
{
 u32 count, drc_index;
 int rc;

 lock_device_hotplug();

 switch (hp_elog->action) {
 case 133:
  switch (hp_elog->id_type) {
  case 130:
   count = hp_elog->_drc_u.drc_count;
   rc = dlpar_memory_add_by_count(count);
   break;
  case 128:
   drc_index = hp_elog->_drc_u.drc_index;
   rc = dlpar_memory_add_by_index(drc_index);
   break;
  case 129:
   count = hp_elog->_drc_u.ic.count;
   drc_index = hp_elog->_drc_u.ic.index;
   rc = dlpar_memory_add_by_ic(count, drc_index);
   break;
  default:
   rc = -EINVAL;
   break;
  }

  break;
 case 131:
  switch (hp_elog->id_type) {
  case 130:
   count = hp_elog->_drc_u.drc_count;
   rc = dlpar_memory_remove_by_count(count);
   break;
  case 128:
   drc_index = hp_elog->_drc_u.drc_index;
   rc = dlpar_memory_remove_by_index(drc_index);
   break;
  case 129:
   count = hp_elog->_drc_u.ic.count;
   drc_index = hp_elog->_drc_u.ic.index;
   rc = dlpar_memory_remove_by_ic(count, drc_index);
   break;
  default:
   rc = -EINVAL;
   break;
  }

  break;
 case 132:
  drc_index = hp_elog->_drc_u.drc_index;
  rc = dlpar_memory_readd_by_index(drc_index);
  break;
 default:
  pr_err("Invalid action (%d) specified\n", hp_elog->action);
  rc = -EINVAL;
  break;
 }

 if (!rc) {
  rtas_hp_event = 1;
  rc = drmem_update_dt();
  rtas_hp_event = 0;
 }

 unlock_device_hotplug();
 return rc;
}
