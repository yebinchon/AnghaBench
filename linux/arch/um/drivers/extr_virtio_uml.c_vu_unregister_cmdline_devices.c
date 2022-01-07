
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_for_each_child (int *,int *,int ) ;
 int device_unregister (int *) ;
 int vu_cmdline_parent ;
 int vu_cmdline_parent_registered ;
 int vu_unregister_cmdline_device ;

__attribute__((used)) static void vu_unregister_cmdline_devices(void)
{
 if (vu_cmdline_parent_registered) {
  device_for_each_child(&vu_cmdline_parent, ((void*)0),
          vu_unregister_cmdline_device);
  device_unregister(&vu_cmdline_parent);
  vu_cmdline_parent_registered = 0;
 }
}
