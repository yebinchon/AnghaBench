
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_handshake_reject {int local_id; } ;
struct relative {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int handshake_reject_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 TYPE_2__* STATS ;
 int delete_relative (struct relative*,int) ;
 struct relative* get_relative_by_connection (struct connection*) ;
 int get_relative_by_id (int ) ;
 int rpc_send_handshake (struct connection*) ;
 int vkprintf (int,char*,int ,int) ;

int rpc_execute_handshake_reject (struct connection *c, struct rpc_handshake_reject *P, int len) {
  vkprintf (2, "rpc_execute_handshake_reject: remote_id = %lld, len = %d\n", P->local_id, len);
  if (len != sizeof (struct rpc_handshake_reject)) {
    return 0;
  }
  STATS->structured.handshake_reject_received ++;
  if (!get_relative_by_id (P->local_id)) {
    struct relative *x = get_relative_by_connection (c);
    if (x) {
      delete_relative (x, 1);
    }
    return 0;
  }
  return rpc_send_handshake (c);
}
