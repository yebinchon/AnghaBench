
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_dump {int dump_registered; int fadump_enabled; int fadump_supported; } ;
typedef int s64 ;
struct TYPE_4__ {int region_cnt; scalar_t__ registered_regions; TYPE_1__* rgn; } ;
struct TYPE_3__ {int size; int dest; int src; } ;


 int EIO ;

 int OPAL_MPIPL_ADD_RANGE ;



 int opal_fadump_unregister (struct fw_dump*) ;
 TYPE_2__* opal_fdm ;
 int opal_mpipl_update (int ,int ,int ,int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int pr_warn (char*,scalar_t__) ;

__attribute__((used)) static int opal_fadump_register(struct fw_dump *fadump_conf)
{
 s64 rc = 130;
 int i, err = -EIO;

 for (i = 0; i < opal_fdm->region_cnt; i++) {
  rc = opal_mpipl_update(OPAL_MPIPL_ADD_RANGE,
           opal_fdm->rgn[i].src,
           opal_fdm->rgn[i].dest,
           opal_fdm->rgn[i].size);
  if (rc != 128)
   break;

  opal_fdm->registered_regions++;
 }

 switch (rc) {
 case 128:
  pr_info("Registration is successful!\n");
  fadump_conf->dump_registered = 1;
  err = 0;
  break;
 case 129:

  pr_warn("%d regions could not be registered for MPIPL as MAX limit is reached!\n",
   (opal_fdm->region_cnt - opal_fdm->registered_regions));
  fadump_conf->dump_registered = 1;
  err = 0;
  break;
 case 130:
  pr_err("Failed to register. Parameter Error(%lld).\n", rc);
  break;
 case 131:
  pr_err("Support not available.\n");
  fadump_conf->fadump_supported = 0;
  fadump_conf->fadump_enabled = 0;
  break;
 default:
  pr_err("Failed to register. Unknown Error(%lld).\n", rc);
  break;
 }





 if ((err < 0) && (opal_fdm->registered_regions > 0))
  opal_fadump_unregister(fadump_conf);

 return err;
}
