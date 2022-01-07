
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_rpc_handshake_packet {int peer_pid; int sender_pid; scalar_t__ flags; int type; } ;
struct TYPE_4__ {int ip; scalar_t__ port; } ;
struct tcp_rpc_data {TYPE_1__ remote_pid; } ;
struct process_id {int dummy; } ;
struct connection {int remote_ip; scalar_t__ remote_port; int our_ip; } ;
struct TYPE_5__ {int (* flush_packet ) (struct connection*) ;} ;
typedef int P ;


 TYPE_1__ PID ;
 int RPC_HANDSHAKE ;
 TYPE_2__* TCP_RPCC_FUNC (struct connection*) ;
 struct tcp_rpc_data* TCP_RPC_DATA (struct connection*) ;
 int get_my_ipv4 () ;
 int init_client_PID (int ) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (struct tcp_rpc_handshake_packet*,int ,int) ;
 int stub1 (struct connection*) ;
 int tcp_rpc_conn_send_data (struct connection*,int,struct tcp_rpc_handshake_packet*) ;

__attribute__((used)) static int tcp_rpcc_send_handshake_packet (struct connection *c) {
  struct tcp_rpc_data *D = TCP_RPC_DATA (c);
  static struct tcp_rpc_handshake_packet P;
  if (!PID.ip) {
    init_client_PID (c->our_ip);
    if (!PID.ip) {
      PID.ip = get_my_ipv4 ();
    }
  }
  memset (&P, 0, sizeof (P));
  P.type = RPC_HANDSHAKE;
  P.flags = 0;
  if (!D->remote_pid.port) {
    D->remote_pid.ip = (c->remote_ip == 0x7f000001 ? 0 : c->remote_ip);
    D->remote_pid.port = c->remote_port;
  }
  memcpy (&P.sender_pid, &PID, sizeof (struct process_id));
  memcpy (&P.peer_pid, &D->remote_pid, sizeof (struct process_id));

  tcp_rpc_conn_send_data (c, sizeof (P), &P);
  TCP_RPCC_FUNC(c)->flush_packet (c);

  return 0;
}
