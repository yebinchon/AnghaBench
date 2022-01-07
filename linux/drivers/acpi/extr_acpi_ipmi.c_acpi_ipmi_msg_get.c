
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct acpi_ipmi_msg *acpi_ipmi_msg_get(struct acpi_ipmi_msg *tx_msg)
{
 kref_get(&tx_msg->kref);

 return tx_msg;
}
