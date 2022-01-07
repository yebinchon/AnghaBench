
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {int kref; } ;


 int ipmi_msg_release_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void acpi_ipmi_msg_put(struct acpi_ipmi_msg *tx_msg)
{
 kref_put(&tx_msg->kref, ipmi_msg_release_kref);
}
