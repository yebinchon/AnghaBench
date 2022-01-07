
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {unsigned int init_speed; unsigned int oper_speed; } ;



void hci_uart_set_speeds(struct hci_uart *hu, unsigned int init_speed,
    unsigned int oper_speed)
{
 hu->init_speed = init_speed;
 hu->oper_speed = oper_speed;
}
