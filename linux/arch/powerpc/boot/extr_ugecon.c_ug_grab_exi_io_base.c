
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef scalar_t__ u32 ;


 void* find_node_by_compatible (int *,char*) ;
 int getprop (void*,char*,scalar_t__*,int) ;

__attribute__((used)) static void *ug_grab_exi_io_base(void)
{
 u32 v;
 void *devp;

 devp = find_node_by_compatible(((void*)0), "nintendo,flipper-exi");
 if (devp == ((void*)0))
  goto err_out;
 if (getprop(devp, "virtual-reg", &v, sizeof(v)) != sizeof(v))
  goto err_out;

 return (void *)v;

err_out:
 return ((void*)0);
}
