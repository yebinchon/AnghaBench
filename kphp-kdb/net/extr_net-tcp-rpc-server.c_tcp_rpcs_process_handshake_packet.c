
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int utime; int pid; int port; int ip; } ;
struct tcp_rpc_handshake_packet {TYPE_2__ peer_pid; int sender_pid; } ;
struct tcp_rpc_data {int packet_num; scalar_t__ packet_type; int packet_len; int remote_pid; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;
struct connection {int our_port; int our_ip; } ;
struct TYPE_4__ {int utime; int pid; int port; scalar_t__ ip; } ;


 TYPE_1__ PID ;
 scalar_t__ RPC_HANDSHAKE ;
 struct tcp_rpc_data* TCP_RPC_DATA (struct connection*) ;
 int assert (int) ;
 scalar_t__ get_my_ipv4 () ;
 int init_server_PID (int ,int ) ;
 int matches_pid (TYPE_1__*,TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int rwm_fetch_data (struct raw_message*,struct tcp_rpc_handshake_packet*,int) ;
 int tcp_rpcs_send_handshake_error_packet (struct connection*,int) ;
 int vkprintf (int,char*,scalar_t__,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tcp_rpcs_process_handshake_packet (struct connection *c, struct raw_message *msg) {
  struct tcp_rpc_data *D = TCP_RPC_DATA(c);
  static struct tcp_rpc_handshake_packet P;
  if (!PID.ip) {
    init_server_PID (c->our_ip, c->our_port);
    if (!PID.ip) {
      PID.ip = get_my_ipv4 ();
    }
  }
  if (D->packet_num != -1 || D->packet_type != RPC_HANDSHAKE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct tcp_rpc_handshake_packet)) {
    tcp_rpcs_send_handshake_error_packet (c, -3);
    return -3;
  }
  assert (rwm_fetch_data (msg, &P, D->packet_len) == D->packet_len);
  memcpy (&D->remote_pid, &P.sender_pid, sizeof (struct process_id));
  if (!matches_pid (&PID, &P.peer_pid)) {
    vkprintf (1, "PID mismatch during handshake: local %08x:%d:%d:%d, remote %08x:%d:%d:%d\n",
                 PID.ip, PID.port, PID.pid, PID.utime, P.peer_pid.ip, P.peer_pid.port, P.peer_pid.pid, P.peer_pid.utime);
    tcp_rpcs_send_handshake_error_packet (c, -4);
    return -4;
  }
  return 0;
}
