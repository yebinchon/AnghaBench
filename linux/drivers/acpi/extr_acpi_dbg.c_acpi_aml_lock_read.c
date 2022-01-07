
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct circ_buf {int dummy; } ;
struct TYPE_2__ {unsigned long flags; int lock; } ;


 int EAGAIN ;
 int EFAULT ;
 int __acpi_aml_access_ok (unsigned long) ;
 int __acpi_aml_readable (struct circ_buf*,unsigned long) ;
 TYPE_1__ acpi_aml_io ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_aml_lock_read(struct circ_buf *circ, unsigned long flag)
{
 int ret = 0;

 mutex_lock(&acpi_aml_io.lock);
 if (!__acpi_aml_access_ok(flag)) {
  ret = -EFAULT;
  goto out;
 }
 if (!__acpi_aml_readable(circ, flag)) {
  ret = -EAGAIN;
  goto out;
 }
 acpi_aml_io.flags |= flag;
out:
 mutex_unlock(&acpi_aml_io.lock);
 return ret;
}
