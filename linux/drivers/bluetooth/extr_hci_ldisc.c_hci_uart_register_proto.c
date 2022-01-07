
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart_proto {size_t id; int name; } ;


 int BT_INFO (char*,int ) ;
 int EEXIST ;
 int EINVAL ;
 size_t HCI_UART_MAX_PROTO ;
 struct hci_uart_proto const** hup ;

int hci_uart_register_proto(const struct hci_uart_proto *p)
{
 if (p->id >= HCI_UART_MAX_PROTO)
  return -EINVAL;

 if (hup[p->id])
  return -EEXIST;

 hup[p->id] = p;

 BT_INFO("HCI UART protocol %s registered", p->name);

 return 0;
}
