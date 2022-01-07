
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct punit_device {int dummy; } ;


 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,struct punit_device*,int *) ;
 int punit_dbg_file ;
 int punit_dev_state_fops ;

__attribute__((used)) static void punit_dbgfs_register(struct punit_device *punit_device)
{
 punit_dbg_file = debugfs_create_dir("punit_atom", ((void*)0));

 debugfs_create_file("dev_power_state", 0444, punit_dbg_file,
       punit_device, &punit_dev_state_fops);
}
