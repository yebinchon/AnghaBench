
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* index; void* count; } ;
struct TYPE_4__ {TYPE_1__ ic; void* drc_index; void* drc_count; } ;
struct pseries_hp_errorlog {int id_type; int resource; TYPE_2__ _drc_u; } ;


 int EINVAL ;






 void* be32_to_cpu (void*) ;
 int dlpar_cpu (struct pseries_hp_errorlog*) ;
 int dlpar_hp_pmem (struct pseries_hp_errorlog*) ;
 int dlpar_memory (struct pseries_hp_errorlog*) ;
 int pr_warn_ratelimited (char*,int) ;

int handle_dlpar_errorlog(struct pseries_hp_errorlog *hp_elog)
{
 int rc;


 switch (hp_elog->id_type) {
 case 133:
  hp_elog->_drc_u.drc_count =
    be32_to_cpu(hp_elog->_drc_u.drc_count);
  break;
 case 131:
  hp_elog->_drc_u.drc_index =
    be32_to_cpu(hp_elog->_drc_u.drc_index);
  break;
 case 132:
  hp_elog->_drc_u.ic.count =
    be32_to_cpu(hp_elog->_drc_u.ic.count);
  hp_elog->_drc_u.ic.index =
    be32_to_cpu(hp_elog->_drc_u.ic.index);
 }

 switch (hp_elog->resource) {
 case 129:
  rc = dlpar_memory(hp_elog);
  break;
 case 130:
  rc = dlpar_cpu(hp_elog);
  break;
 case 128:
  rc = dlpar_hp_pmem(hp_elog);
  break;

 default:
  pr_warn_ratelimited("Invalid resource (%d) specified\n",
        hp_elog->resource);
  rc = -EINVAL;
 }

 return rc;
}
