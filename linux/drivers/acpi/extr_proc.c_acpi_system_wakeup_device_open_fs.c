
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int PDE_DATA (struct inode*) ;
 int acpi_system_wakeup_device_seq_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int
acpi_system_wakeup_device_open_fs(struct inode *inode, struct file *file)
{
 return single_open(file, acpi_system_wakeup_device_seq_show,
      PDE_DATA(inode));
}
