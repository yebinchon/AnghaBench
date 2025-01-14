
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int free; int run; } ;
typedef TYPE_2__ command_t ;
struct TYPE_6__ {int free; int run; } ;
struct TYPE_8__ {int len; long long extra; void* data; TYPE_1__ base; } ;
typedef TYPE_3__ command_net_write_t ;


 void* malloc (size_t) ;
 int memcpy (void*,char const*,size_t) ;

command_t *create_command_net_writer (const char *data, int data_len, command_t *base, long long extra) {
  command_net_write_t *command = malloc (sizeof (command_net_write_t));
  command->base.run = base->run;
  command->base.free = base->free;

  command->data = malloc ((size_t)data_len);
  memcpy (command->data, data, (size_t)data_len);
  command->len = data_len;
  command->extra = extra;

  return (command_t *)command;
}
