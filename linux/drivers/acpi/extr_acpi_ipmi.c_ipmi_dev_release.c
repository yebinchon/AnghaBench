
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_device {int dev; int user_interface; } ;


 int ipmi_destroy_user (int ) ;
 int kfree (struct acpi_ipmi_device*) ;
 int put_device (int ) ;

__attribute__((used)) static void ipmi_dev_release(struct acpi_ipmi_device *ipmi_device)
{
 ipmi_destroy_user(ipmi_device->user_interface);
 put_device(ipmi_device->dev);
 kfree(ipmi_device);
}
