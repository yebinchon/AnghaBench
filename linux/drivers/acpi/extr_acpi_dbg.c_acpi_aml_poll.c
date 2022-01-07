
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int wait; } ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 TYPE_1__ acpi_aml_io ;
 scalar_t__ acpi_aml_user_readable () ;
 scalar_t__ acpi_aml_user_writable () ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t acpi_aml_poll(struct file *file, poll_table *wait)
{
 __poll_t masks = 0;

 poll_wait(file, &acpi_aml_io.wait, wait);
 if (acpi_aml_user_readable())
  masks |= EPOLLIN | EPOLLRDNORM;
 if (acpi_aml_user_writable())
  masks |= EPOLLOUT | EPOLLWRNORM;

 return masks;
}
