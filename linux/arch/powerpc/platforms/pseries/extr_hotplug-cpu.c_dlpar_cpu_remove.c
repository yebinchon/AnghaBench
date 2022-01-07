
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dlpar_acquire_drc (int ) ;
 int dlpar_detach_node (struct device_node*) ;
 int dlpar_offline_cpu (struct device_node*) ;
 int dlpar_online_cpu (struct device_node*) ;
 int dlpar_release_drc (int ) ;
 int pr_debug (char*,int ,...) ;
 int pr_warn (char*,struct device_node*,int,...) ;

__attribute__((used)) static ssize_t dlpar_cpu_remove(struct device_node *dn, u32 drc_index)
{
 int rc;

 pr_debug("Attempting to remove CPU %pOFn, drc index: %x\n",
   dn, drc_index);

 rc = dlpar_offline_cpu(dn);
 if (rc) {
  pr_warn("Failed to offline CPU %pOFn, rc: %d\n", dn, rc);
  return -EINVAL;
 }

 rc = dlpar_release_drc(drc_index);
 if (rc) {
  pr_warn("Failed to release drc (%x) for CPU %pOFn, rc: %d\n",
   drc_index, dn, rc);
  dlpar_online_cpu(dn);
  return rc;
 }

 rc = dlpar_detach_node(dn);
 if (rc) {
  int saved_rc = rc;

  pr_warn("Failed to detach CPU %pOFn, rc: %d", dn, rc);

  rc = dlpar_acquire_drc(drc_index);
  if (!rc)
   dlpar_online_cpu(dn);

  return saved_rc;
 }

 pr_debug("Successfully removed CPU, drc index: %x\n", drc_index);
 return 0;
}
