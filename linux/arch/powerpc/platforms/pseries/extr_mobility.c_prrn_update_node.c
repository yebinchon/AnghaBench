
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drc_index; } ;
struct pseries_hp_errorlog {TYPE_1__ _drc_u; int id_type; int action; int resource; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int PSERIES_HP_ELOG_ACTION_READD ;
 int PSERIES_HP_ELOG_ID_DRC_INDEX ;
 int PSERIES_HP_ELOG_RESOURCE_MEM ;
 int be32_to_cpu (int ) ;
 int handle_dlpar_errorlog (struct pseries_hp_errorlog*) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void prrn_update_node(__be32 phandle)
{
 struct pseries_hp_errorlog hp_elog;
 struct device_node *dn;





 dn = of_find_node_by_phandle(be32_to_cpu(phandle));
 if (dn) {
  of_node_put(dn);
  return;
 }

 hp_elog.resource = PSERIES_HP_ELOG_RESOURCE_MEM;
 hp_elog.action = PSERIES_HP_ELOG_ACTION_READD;
 hp_elog.id_type = PSERIES_HP_ELOG_ID_DRC_INDEX;
 hp_elog._drc_u.drc_index = phandle;

 handle_dlpar_errorlog(&hp_elog);
}
