
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_dump {scalar_t__ dump_active; } ;
typedef scalar_t__ s64 ;


 int EIO ;
 int OPAL_MPIPL_FREE_PRESERVED_MEMORY ;
 int * opal_fdm_active ;
 scalar_t__ opal_mpipl_update (int ,int ,int ,int ) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static int opal_fadump_invalidate(struct fw_dump *fadump_conf)
{
 s64 rc;

 rc = opal_mpipl_update(OPAL_MPIPL_FREE_PRESERVED_MEMORY, 0, 0, 0);
 if (rc) {
  pr_err("Failed to invalidate - unexpected Error(%lld).\n", rc);
  return -EIO;
 }

 fadump_conf->dump_active = 0;
 opal_fdm_active = ((void*)0);
 return 0;
}
