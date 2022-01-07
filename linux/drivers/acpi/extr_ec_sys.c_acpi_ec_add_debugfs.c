
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct dentry {int dummy; } ;
struct acpi_ec {int dummy; } ;
struct TYPE_2__ {int global_lock; int gpe; } ;


 int * acpi_ec_debugfs_dir ;
 int acpi_ec_io_ops ;
 int debugfs_create_bool (char*,int,struct dentry*,int *) ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct acpi_ec*,int *) ;
 int debugfs_create_x32 (char*,int,struct dentry*,int *) ;
 TYPE_1__* first_ec ;
 int sprintf (char*,char*,unsigned int) ;
 scalar_t__ write_support ;

__attribute__((used)) static void acpi_ec_add_debugfs(struct acpi_ec *ec, unsigned int ec_device_count)
{
 struct dentry *dev_dir;
 char name[64];
 umode_t mode = 0400;

 if (ec_device_count == 0)
  acpi_ec_debugfs_dir = debugfs_create_dir("ec", ((void*)0));

 sprintf(name, "ec%u", ec_device_count);
 dev_dir = debugfs_create_dir(name, acpi_ec_debugfs_dir);

 debugfs_create_x32("gpe", 0444, dev_dir, &first_ec->gpe);
 debugfs_create_bool("use_global_lock", 0444, dev_dir,
       &first_ec->global_lock);

 if (write_support)
  mode = 0600;
 debugfs_create_file("io", mode, dev_dir, ec, &acpi_ec_io_ops);
}
