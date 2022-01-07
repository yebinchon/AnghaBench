
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_msg {scalar_t__ msg_done; int rx_len; int data; } ;
struct acpi_ipmi_buffer {scalar_t__ status; int data; int length; } ;
typedef int acpi_integer ;


 scalar_t__ ACPI_IPMI_OK ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void acpi_format_ipmi_response(struct acpi_ipmi_msg *msg,
          acpi_integer *value)
{
 struct acpi_ipmi_buffer *buffer;





 buffer = (struct acpi_ipmi_buffer *)value;





 buffer->status = msg->msg_done;
 if (msg->msg_done != ACPI_IPMI_OK)
  return;





 buffer->length = msg->rx_len;
 memcpy(buffer->data, msg->data, msg->rx_len);
}
