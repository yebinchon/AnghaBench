
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int wait; } ;


 int EAGAIN ;
 int ENODEV ;
 int acpi_aml_initialized ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_kern_writable () ;
 int acpi_aml_write_kern (char const*,int) ;
 int strlen (char const*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static ssize_t acpi_aml_write_log(const char *msg)
{
 int ret = 0;
 int count = 0, size = 0;

 if (!acpi_aml_initialized)
  return -ENODEV;
 if (msg)
  count = strlen(msg);
 while (count > 0) {
again:
  ret = acpi_aml_write_kern(msg + size, count);
  if (ret == -EAGAIN) {
   ret = wait_event_interruptible(acpi_aml_io.wait,
    acpi_aml_kern_writable());




   if (ret == 0)
    goto again;
   break;
  }
  if (ret < 0)
   break;
  size += ret;
  count -= ret;
 }
 return size > 0 ? size : ret;
}
