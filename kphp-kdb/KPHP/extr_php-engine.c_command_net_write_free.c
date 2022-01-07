
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int command_t ;
struct TYPE_3__ {scalar_t__ len; struct TYPE_3__* data; } ;
typedef TYPE_1__ command_net_write_t ;


 int free (TYPE_1__*) ;

void command_net_write_free (command_t *base_command) {
  command_net_write_t *command = (command_net_write_t *)base_command;

  if (command->data != ((void*)0)) {
    free (command->data);
    command->data = ((void*)0);
    command->len = 0;
  }
  free (command);
}
