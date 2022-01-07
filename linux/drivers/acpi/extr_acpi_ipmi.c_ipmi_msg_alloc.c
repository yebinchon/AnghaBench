
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {int msg_done; struct acpi_ipmi_device* device; int head; int tx_complete; int kref; } ;
struct acpi_ipmi_device {int dummy; } ;


 int ACPI_IPMI_UNKNOWN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct acpi_ipmi_device* acpi_ipmi_dev_get () ;
 int acpi_ipmi_dev_put (struct acpi_ipmi_device*) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct acpi_ipmi_msg* kzalloc (int,int ) ;

__attribute__((used)) static struct acpi_ipmi_msg *ipmi_msg_alloc(void)
{
 struct acpi_ipmi_device *ipmi;
 struct acpi_ipmi_msg *ipmi_msg;

 ipmi = acpi_ipmi_dev_get();
 if (!ipmi)
  return ((void*)0);

 ipmi_msg = kzalloc(sizeof(struct acpi_ipmi_msg), GFP_KERNEL);
 if (!ipmi_msg) {
  acpi_ipmi_dev_put(ipmi);
  return ((void*)0);
 }

 kref_init(&ipmi_msg->kref);
 init_completion(&ipmi_msg->tx_complete);
 INIT_LIST_HEAD(&ipmi_msg->head);
 ipmi_msg->device = ipmi;
 ipmi_msg->msg_done = ACPI_IPMI_UNKNOWN;

 return ipmi_msg;
}
