
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repl_server_status {int session_id; scalar_t__ binlog; scalar_t__ buffer; TYPE_2__* server_next; TYPE_1__* server_prev; } ;
struct TYPE_4__ {TYPE_1__* server_prev; } ;
struct TYPE_3__ {TYPE_2__* server_next; } ;


 scalar_t__ active_repl_servers ;
 int assert (int) ;
 int close_binlog (scalar_t__,int) ;
 int free (scalar_t__) ;
 int get_server_by_session (int ,int) ;
 int vkprintf (int,char*,int ) ;

int destroy_server (struct repl_server_status *S) {
  vkprintf (1, "destroyed server %d\n", S->session_id);
  S->server_next->server_prev = S->server_prev;
  S->server_prev->server_next = S->server_next;
  if (S->buffer) {

    free (S->buffer);
  }
  if (S->binlog) {
    close_binlog (S->binlog, 1);
  }
  get_server_by_session (S->session_id, -1);
  assert (--active_repl_servers >= 0);
  return 0;
}
