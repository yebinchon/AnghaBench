
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ead_msg {int len; } ;
struct ead_packet {struct ead_msg msg; } ;
struct ead_msg_auth {int data; } ;
struct TYPE_2__ {struct ead_msg msg; } ;


 int DEBUG (int,char*) ;
 struct ead_msg_auth* EAD_DATA (struct ead_msg*,struct ead_msg_auth*) ;
 int EAD_TYPE_SEND_CMD ;
 int EAD_TYPE_SET_USERNAME ;
 struct ead_msg_auth* auth ;
 int htonl (int) ;
 int memcpy (int ,int ,int) ;
 TYPE_1__* pktbuf ;
 int t_serverresponse (int ) ;
 scalar_t__ t_serververify (int ,int ) ;
 int ts ;

__attribute__((used)) static bool
handle_send_auth(struct ead_packet *pkt, int len, int *nstate)
{
 struct ead_msg *msg = &pkt->msg;
 struct ead_msg_auth *auth = EAD_DATA(msg, auth);

 if (t_serververify(ts, auth->data) != 0) {
  DEBUG(2, "Client authentication failed\n");
  *nstate = EAD_TYPE_SET_USERNAME;
  return 0;
 }

 msg = &pktbuf->msg;
 auth = EAD_DATA(msg, auth);
 msg->len = htonl(sizeof(struct ead_msg_auth));

 DEBUG(2, "Client authentication successful\n");
 memcpy(auth->data, t_serverresponse(ts), sizeof(auth->data));

 *nstate = EAD_TYPE_SEND_CMD;
 return 1;
}
