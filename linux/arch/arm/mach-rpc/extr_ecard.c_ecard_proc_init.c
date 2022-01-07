
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ecard_devices_proc_show ;
 int proc_bus_ecard_dir ;
 int proc_create_single (char*,int ,int ,int ) ;
 int proc_mkdir (char*,int *) ;

__attribute__((used)) static void ecard_proc_init(void)
{
 proc_bus_ecard_dir = proc_mkdir("bus/ecard", ((void*)0));
 proc_create_single("devices", 0, proc_bus_ecard_dir,
   ecard_devices_proc_show);
}
