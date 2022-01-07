
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int arch_gnttab_valloc (int *,unsigned long) ;
 int arch_gnttab_vfree (int *) ;
 int gnttab_shared_vm_area ;
 int gnttab_status_vm_area ;
 int xen_pv_domain () ;

int arch_gnttab_init(unsigned long nr_shared, unsigned long nr_status)
{
 int ret;

 if (!xen_pv_domain())
  return 0;

 ret = arch_gnttab_valloc(&gnttab_shared_vm_area, nr_shared);
 if (ret < 0)
  return ret;





 ret = arch_gnttab_valloc(&gnttab_status_vm_area, nr_status);
 if (ret < 0)
  goto err;

 return 0;
err:
 arch_gnttab_vfree(&gnttab_shared_vm_area);
 return -ENOMEM;
}
