
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_smi {int event_receiver; int event_receiver_lun; } ;
struct TYPE_4__ {scalar_t__ netfn; scalar_t__ cmd; int* data; } ;
struct TYPE_3__ {scalar_t__ addr_type; } ;
struct ipmi_recv_msg {TYPE_2__ msg; TYPE_1__ addr; } ;


 int IPMI_CC_NO_ERROR ;
 scalar_t__ IPMI_GET_EVENT_RECEIVER_CMD ;
 scalar_t__ IPMI_NETFN_SENSOR_EVENT_RESPONSE ;
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;

__attribute__((used)) static void event_receiver_fetcher(struct ipmi_smi *intf,
       struct ipmi_recv_msg *msg)
{
 if ((msg->addr.addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE)
     && (msg->msg.netfn == IPMI_NETFN_SENSOR_EVENT_RESPONSE)
     && (msg->msg.cmd == IPMI_GET_EVENT_RECEIVER_CMD)
     && (msg->msg.data[0] == IPMI_CC_NO_ERROR)) {

  intf->event_receiver = msg->msg.data[1];
  intf->event_receiver_lun = msg->msg.data[2] & 0x3;
 }
}
