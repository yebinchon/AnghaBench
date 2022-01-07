
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_ipmi_msg {int tx_complete; int tx_message; int tx_msgid; int addr; int head; struct acpi_ipmi_device* device; } ;
struct acpi_ipmi_device {int user_interface; int tx_msg_lock; int tx_msg_list; scalar_t__ dead; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
typedef int acpi_integer ;
struct TYPE_2__ {int ipmi_lock; } ;


 int ACPI_IO_MASK ;
 int ACPI_READ ;
 int AE_ERROR ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AE_TYPE ;
 int IPMI_TIMEOUT ;
 scalar_t__ acpi_format_ipmi_request (struct acpi_ipmi_msg*,int ,int *) ;
 int acpi_format_ipmi_response (struct acpi_ipmi_msg*,int *) ;
 int acpi_ipmi_msg_get (struct acpi_ipmi_msg*) ;
 int acpi_ipmi_msg_put (struct acpi_ipmi_msg*) ;
 TYPE_1__ driver_data ;
 int ipmi_cancel_tx_msg (struct acpi_ipmi_device*,struct acpi_ipmi_msg*) ;
 struct acpi_ipmi_msg* ipmi_msg_alloc () ;
 int ipmi_msg_release (struct acpi_ipmi_msg*) ;
 int ipmi_request_settime (int ,int *,int ,int *,int *,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static acpi_status
acpi_ipmi_space_handler(u32 function, acpi_physical_address address,
   u32 bits, acpi_integer *value,
   void *handler_context, void *region_context)
{
 struct acpi_ipmi_msg *tx_msg;
 struct acpi_ipmi_device *ipmi_device;
 int err;
 acpi_status status;
 unsigned long flags;







 if ((function & ACPI_IO_MASK) == ACPI_READ)
  return AE_TYPE;

 tx_msg = ipmi_msg_alloc();
 if (!tx_msg)
  return AE_NOT_EXIST;
 ipmi_device = tx_msg->device;

 if (acpi_format_ipmi_request(tx_msg, address, value) != 0) {
  ipmi_msg_release(tx_msg);
  return AE_TYPE;
 }

 acpi_ipmi_msg_get(tx_msg);
 mutex_lock(&driver_data.ipmi_lock);

 if (ipmi_device->dead) {
  mutex_unlock(&driver_data.ipmi_lock);
  ipmi_msg_release(tx_msg);
  return AE_NOT_EXIST;
 }
 spin_lock_irqsave(&ipmi_device->tx_msg_lock, flags);
 list_add_tail(&tx_msg->head, &ipmi_device->tx_msg_list);
 spin_unlock_irqrestore(&ipmi_device->tx_msg_lock, flags);
 mutex_unlock(&driver_data.ipmi_lock);

 err = ipmi_request_settime(ipmi_device->user_interface,
       &tx_msg->addr,
       tx_msg->tx_msgid,
       &tx_msg->tx_message,
       ((void*)0), 0, 0, IPMI_TIMEOUT);
 if (err) {
  status = AE_ERROR;
  goto out_msg;
 }
 wait_for_completion(&tx_msg->tx_complete);

 acpi_format_ipmi_response(tx_msg, value);
 status = AE_OK;

out_msg:
 ipmi_cancel_tx_msg(ipmi_device, tx_msg);
 acpi_ipmi_msg_put(tx_msg);
 return status;
}
