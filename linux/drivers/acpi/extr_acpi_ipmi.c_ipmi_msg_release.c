
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {int device; } ;


 int acpi_ipmi_dev_put (int ) ;
 int kfree (struct acpi_ipmi_msg*) ;

__attribute__((used)) static void ipmi_msg_release(struct acpi_ipmi_msg *tx_msg)
{
 acpi_ipmi_dev_put(tx_msg->device);
 kfree(tx_msg);
}
