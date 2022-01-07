
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_rpc_handshake_packet {int peer_pid; int sender_pid; scalar_t__ flags; int type; } ;
struct TYPE_4__ {int pid; } ;
struct tcp_rpc_data {TYPE_1__ remote_pid; } ;
struct process_id {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_5__ {int (* flush_packet ) (struct connection*) ;} ;
typedef int P ;


 TYPE_1__ PID ;
 int RPC_HANDSHAKE ;
 TYPE_2__* TCP_RPCS_FUNC (struct connection*) ;
 struct tcp_rpc_data* TCP_RPC_DATA (struct connection*) ;
 int assert (int ) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (struct tcp_rpc_handshake_packet*,int ,int) ;
 int stub1 (struct connection*) ;
 int tcp_rpc_conn_send_data (struct connection*,int,struct tcp_rpc_handshake_packet*) ;

__attribute__((used)) static int tcp_rpcs_send_handshake_packet (struct connection *c) {
  struct tcp_rpc_data *D = TCP_RPC_DATA(c);
  static struct tcp_rpc_handshake_packet P;
  assert (PID.pid);
  memset (&P, 0, sizeof (P));
  P.type = RPC_HANDSHAKE;
  P.flags = 0;
  memcpy (&P.sender_pid, &PID, sizeof (struct process_id));
  memcpy (&P.peer_pid, &D->remote_pid, sizeof (struct process_id));

  tcp_rpc_conn_send_data (c, sizeof (P), &P);

  TCP_RPCS_FUNC(c)->flush_packet (c);
  return 0;
}
