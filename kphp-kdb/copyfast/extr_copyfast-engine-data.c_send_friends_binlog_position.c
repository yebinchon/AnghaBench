
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct relative {struct relative* next; TYPE_1__ node; } ;
struct connection {int dummy; } ;


 struct relative RELATIVES ;
 struct connection* get_relative_connection (struct relative*) ;
 int rpc_send_binlog_info (struct connection*,int ) ;

void send_friends_binlog_position (void) {
  struct relative *cur = RELATIVES.next;
  while (cur != &RELATIVES) {
    struct connection *c = get_relative_connection (cur);
    if (c) {
      rpc_send_binlog_info (c, cur->node.id);
    }
    cur = cur->next;
  }
}
