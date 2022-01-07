
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sid; int type; } ;
struct ead_packet {TYPE_1__ msg; } ;
struct ead_msg_user {int dummy; } ;
struct ead_msg_number {int dummy; } ;
struct ead_msg_encrypted {int dummy; } ;
struct ead_msg_cmd {int dummy; } ;
struct ead_msg_auth {int dummy; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_6__ {int len; int sid; int nid; void* type; void* magic; } ;
struct TYPE_7__ {TYPE_2__ msg; } ;


 int DEBUG (int,char*,...) ;
 int EAD_INSTANCE_MASK ;
 int EAD_INSTANCE_SHIFT ;
 int EAD_MAGIC ;






 int ead_send_packet_clone (struct ead_packet*) ;
 int handle_get_prime (struct ead_packet*,int,int*) ;
 int handle_ping (struct ead_packet*,int,int*) ;
 int handle_send_a (struct ead_packet*,int,int*) ;
 int handle_send_auth (struct ead_packet*,int,int*) ;
 int handle_send_cmd (struct ead_packet*,int,int*) ;
 int handle_set_username (struct ead_packet*,int,int*) ;
 void* htonl (int) ;
 int htons (int ) ;
 TYPE_4__* instance ;
 int nid ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 TYPE_3__* pktbuf ;
 int set_state (int) ;
 int state ;

__attribute__((used)) static void
parse_message(struct ead_packet *pkt, int len)
{
 bool (*handler)(struct ead_packet *pkt, int len, int *nstate);
 int min_len = sizeof(struct ead_packet);
 int nstate = state;
 int type = ntohl(pkt->msg.type);

 if ((type >= 133) &&
  (state != type))
  return;

 if ((type != 132) &&
  ((ntohs(pkt->msg.sid) & EAD_INSTANCE_MASK) >>
   EAD_INSTANCE_SHIFT) != instance->id)
  return;

 switch(type) {
 case 132:
  handler = handle_ping;
  break;
 case 128:
  handler = handle_set_username;
  min_len += sizeof(struct ead_msg_user);
  break;
 case 133:
  handler = handle_get_prime;
  break;
 case 131:
  handler = handle_send_a;
  min_len += sizeof(struct ead_msg_number);
  break;
 case 130:
  handler = handle_send_auth;
  min_len += sizeof(struct ead_msg_auth);
  break;
 case 129:
  handler = handle_send_cmd;
  min_len += sizeof(struct ead_msg_cmd) + sizeof(struct ead_msg_encrypted);
  break;
 default:
  return;
 }

 if (len < min_len) {
  DEBUG(2, "discarding packet: message too small\n");
  return;
 }

 pktbuf->msg.magic = htonl(EAD_MAGIC);
 pktbuf->msg.type = htonl(type + 1);
 pktbuf->msg.nid = htons(nid);
 pktbuf->msg.sid = pkt->msg.sid;
 pktbuf->msg.len = 0;

 if (handler(pkt, len, &nstate)) {
  DEBUG(2, "sending response to packet type %d: %d\n", type + 1, ntohl(pktbuf->msg.len));

  ead_send_packet_clone(pkt);
 }
 set_state(nstate);
}
