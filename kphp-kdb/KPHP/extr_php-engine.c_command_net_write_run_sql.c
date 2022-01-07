
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connection {scalar_t__ status; int last_query_sent_time; int Out; } ;
typedef int command_t ;
struct TYPE_4__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ command_net_write_t ;
struct TYPE_6__ {int response_state; } ;
struct TYPE_5__ {int (* sql_flush_packet ) (struct connection*,scalar_t__) ;} ;


 TYPE_3__* SQLC_DATA (struct connection*) ;
 TYPE_2__* SQLC_FUNC (struct connection*) ;
 int assert (int) ;
 scalar_t__ conn_ready ;
 scalar_t__ conn_wait_answer ;
 int flush_connection_output (struct connection*) ;
 int free (int *) ;
 int precise_now ;
 int resp_first ;
 int stub1 (struct connection*,scalar_t__) ;
 scalar_t__ write_out (int *,int *,scalar_t__) ;

void command_net_write_run_sql (command_t *base_command, void *data) {

  command_net_write_t *command = (command_net_write_t *)base_command;

  assert (command->data != ((void*)0));
  struct connection *d = (struct connection *)data;
  assert (d->status == conn_ready);
  assert (write_out (&(d)->Out, command->data, command->len) == command->len);
  SQLC_FUNC (d)->sql_flush_packet (d, command->len - 4);

  flush_connection_output (d);
  d->last_query_sent_time = precise_now;
  d->status = conn_wait_answer;
  SQLC_DATA(d)->response_state = resp_first;


  free (command->data);
  command->data = ((void*)0);
  command->len = 0;
}
