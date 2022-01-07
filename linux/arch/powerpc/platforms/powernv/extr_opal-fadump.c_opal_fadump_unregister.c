
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_dump {scalar_t__ dump_registered; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {scalar_t__ registered_regions; } ;


 int EIO ;
 int OPAL_MPIPL_REMOVE_ALL ;
 TYPE_1__* opal_fdm ;
 scalar_t__ opal_mpipl_update (int ,int ,int ,int ) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static int opal_fadump_unregister(struct fw_dump *fadump_conf)
{
 s64 rc;

 rc = opal_mpipl_update(OPAL_MPIPL_REMOVE_ALL, 0, 0, 0);
 if (rc) {
  pr_err("Failed to un-register - unexpected Error(%lld).\n", rc);
  return -EIO;
 }

 opal_fdm->registered_regions = 0;
 fadump_conf->dump_registered = 0;
 return 0;
}
