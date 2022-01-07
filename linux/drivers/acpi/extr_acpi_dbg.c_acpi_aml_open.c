
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; } ;
typedef int acpi_status ;
struct TYPE_5__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_4__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_6__ {int flags; int lock; int users; TYPE_2__ in_crc; TYPE_1__ out_crc; } ;


 int ACPI_AML_CLOSED ;
 int ACPI_AML_OPENED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int O_ACCMODE ;
 int O_WRONLY ;
 struct file* acpi_aml_active_reader ;
 TYPE_3__ acpi_aml_io ;
 int acpi_initialize_debugger () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int acpi_aml_open(struct inode *inode, struct file *file)
{
 int ret = 0;
 acpi_status status;

 mutex_lock(&acpi_aml_io.lock);




 if (acpi_aml_io.flags & ACPI_AML_CLOSED) {
  ret = -EBUSY;
  goto err_lock;
 }
 if ((file->f_flags & O_ACCMODE) != O_WRONLY) {




  if (acpi_aml_active_reader) {
   ret = -EBUSY;
   goto err_lock;
  } else {
   pr_debug("Opening debugger reader.\n");
   acpi_aml_active_reader = file;
  }
 } else {




  if (!(acpi_aml_io.flags & ACPI_AML_OPENED)) {
   ret = -ENODEV;
   goto err_lock;
  }
 }
 if (acpi_aml_active_reader == file) {
  pr_debug("Opening debugger interface.\n");
  mutex_unlock(&acpi_aml_io.lock);

  pr_debug("Initializing debugger thread.\n");
  status = acpi_initialize_debugger();
  if (ACPI_FAILURE(status)) {
   pr_err("Failed to initialize debugger.\n");
   ret = -EINVAL;
   goto err_exit;
  }
  pr_debug("Debugger thread initialized.\n");

  mutex_lock(&acpi_aml_io.lock);
  acpi_aml_io.flags |= ACPI_AML_OPENED;
  acpi_aml_io.out_crc.head = acpi_aml_io.out_crc.tail = 0;
  acpi_aml_io.in_crc.head = acpi_aml_io.in_crc.tail = 0;
  pr_debug("Debugger interface opened.\n");
 }
 acpi_aml_io.users++;
err_lock:
 if (ret < 0) {
  if (acpi_aml_active_reader == file)
   acpi_aml_active_reader = ((void*)0);
 }
 mutex_unlock(&acpi_aml_io.lock);
err_exit:
 return ret;
}
