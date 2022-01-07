
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dummy; } ;
struct fsl_mc_bus {int scan_mutex; } ;


 int dprc_scan_objects (struct fsl_mc_device*,int *) ;
 int fsl_mc_cleanup_all_resource_pools (struct fsl_mc_device*) ;
 int fsl_mc_init_all_resource_pools (struct fsl_mc_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsl_mc_bus* to_fsl_mc_bus (struct fsl_mc_device*) ;

__attribute__((used)) static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
{
 int error;
 struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);

 fsl_mc_init_all_resource_pools(mc_bus_dev);




 mutex_lock(&mc_bus->scan_mutex);
 error = dprc_scan_objects(mc_bus_dev, ((void*)0));
 mutex_unlock(&mc_bus->scan_mutex);
 if (error < 0) {
  fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
  return error;
 }

 return 0;
}
