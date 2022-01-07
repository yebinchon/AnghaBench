
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int wait; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int acpi_aml_initialized ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_kern_readable () ;
 int acpi_aml_readb_kern () ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static ssize_t acpi_aml_read_cmd(char *msg, size_t count)
{
 int ret = 0;
 int size = 0;





 BUG_ON(!acpi_aml_initialized);
 while (count > 0) {
again:



  ret = acpi_aml_readb_kern();
  if (ret == -EAGAIN) {
   ret = wait_event_interruptible(acpi_aml_io.wait,
    acpi_aml_kern_readable());




   if (ret == 0)
    goto again;
  }
  if (ret < 0)
   break;
  *(msg + size) = (char)ret;
  size++;
  count--;
  if (ret == '\n') {




   *(msg + size - 1) = '\0';
   break;
  }
 }
 return size > 0 ? size : ret;
}
