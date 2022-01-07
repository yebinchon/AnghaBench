
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next_device; int port; int line; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int hdlcdev_exit (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int mgslpc_device_count ;
 TYPE_1__* mgslpc_device_list ;
 int release_resources (TYPE_1__*) ;
 int serial_driver ;
 int tty_port_destroy (int *) ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static void mgslpc_remove_device(MGSLPC_INFO *remove_info)
{
 MGSLPC_INFO *info = mgslpc_device_list;
 MGSLPC_INFO *last = ((void*)0);

 while(info) {
  if (info == remove_info) {
   if (last)
    last->next_device = info->next_device;
   else
    mgslpc_device_list = info->next_device;
   tty_unregister_device(serial_driver, info->line);



   release_resources(info);
   tty_port_destroy(&info->port);
   kfree(info);
   mgslpc_device_count--;
   return;
  }
  last = info;
  info = info->next_device;
 }
}
