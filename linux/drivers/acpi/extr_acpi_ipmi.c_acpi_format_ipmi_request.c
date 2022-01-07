
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernel_ipmi_msg {scalar_t__ data_len; int data; int cmd; int netfn; } ;
struct TYPE_2__ {scalar_t__* data; int channel; int addr_type; } ;
struct acpi_ipmi_msg {scalar_t__ tx_msgid; struct acpi_ipmi_device* device; TYPE_1__ addr; int data; struct kernel_ipmi_msg tx_message; } ;
struct acpi_ipmi_device {int tx_msg_lock; scalar_t__ curr_msgid; int dev; } ;
struct acpi_ipmi_buffer {scalar_t__ length; int data; } ;
typedef int acpi_physical_address ;
typedef int acpi_integer ;


 scalar_t__ ACPI_IPMI_MAX_MSG_LENGTH ;
 int EINVAL ;
 int IPMI_BMC_CHANNEL ;
 int IPMI_OP_RGN_CMD (int ) ;
 int IPMI_OP_RGN_NETFN (int ) ;
 int IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 int dev_WARN_ONCE (int ,int,char*,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int acpi_format_ipmi_request(struct acpi_ipmi_msg *tx_msg,
        acpi_physical_address address,
        acpi_integer *value)
{
 struct kernel_ipmi_msg *msg;
 struct acpi_ipmi_buffer *buffer;
 struct acpi_ipmi_device *device;
 unsigned long flags;

 msg = &tx_msg->tx_message;





 msg->netfn = IPMI_OP_RGN_NETFN(address);
 msg->cmd = IPMI_OP_RGN_CMD(address);
 msg->data = tx_msg->data;





 buffer = (struct acpi_ipmi_buffer *)value;


 if (buffer->length > ACPI_IPMI_MAX_MSG_LENGTH) {
  dev_WARN_ONCE(tx_msg->device->dev, 1,
         "Unexpected request (msg len %d).\n",
         buffer->length);
  return -EINVAL;
 }
 msg->data_len = buffer->length;
 memcpy(tx_msg->data, buffer->data, msg->data_len);
 tx_msg->addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
 tx_msg->addr.channel = IPMI_BMC_CHANNEL;
 tx_msg->addr.data[0] = 0;


 device = tx_msg->device;

 spin_lock_irqsave(&device->tx_msg_lock, flags);
 device->curr_msgid++;
 tx_msg->tx_msgid = device->curr_msgid;
 spin_unlock_irqrestore(&device->tx_msg_lock, flags);

 return 0;
}
