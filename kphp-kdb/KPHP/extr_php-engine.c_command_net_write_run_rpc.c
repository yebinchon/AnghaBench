
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int last_query_sent_time; } ;
typedef int command_t ;
struct TYPE_2__ {scalar_t__ len; int * data; int extra; } ;
typedef TYPE_1__ command_net_write_t ;


 int RPC_INVOKE_REQ ;
 int assert (int ) ;
 int flush_connection_output (struct connection*) ;
 int free (int *) ;
 int precise_now ;
 int send_rpc_query (struct connection*,int ,int ,int*,scalar_t__) ;

void command_net_write_run_rpc (command_t *base_command, void *data) {
  command_net_write_t *command = (command_net_write_t *)base_command;


  assert (command->data != ((void*)0));
  struct connection *d = (struct connection *)data;


  send_rpc_query (d, RPC_INVOKE_REQ, command->extra, (int *)command->data, command->len);

  flush_connection_output (d);
  d->last_query_sent_time = precise_now;

  free (command->data);
  command->data = ((void*)0);
  command->len = 0;
}
