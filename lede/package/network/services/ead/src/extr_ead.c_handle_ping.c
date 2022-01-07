
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ead_packet {int dummy; } ;
struct ead_msg_pong {int auth_type; scalar_t__* name; } ;
struct ead_msg {int len; } ;
struct TYPE_2__ {struct ead_msg msg; } ;


 int EAD_AUTH_MD5 ;
 struct ead_msg_pong* EAD_DATA (struct ead_msg*,int ) ;
 int dev_name ;
 int htonl (int) ;
 int htons (int ) ;
 TYPE_1__* pktbuf ;
 struct ead_msg_pong* pong ;
 int strlen (int ) ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static bool
handle_ping(struct ead_packet *pkt, int len, int *nstate)
{
 struct ead_msg *msg = &pktbuf->msg;
 struct ead_msg_pong *pong = EAD_DATA(msg, pong);
 int slen;

 slen = strlen(dev_name);
 if (slen > 1024)
  slen = 1024;

 msg->len = htonl(sizeof(struct ead_msg_pong) + slen);
 strncpy(pong->name, dev_name, slen);
 pong->name[slen] = 0;
 pong->auth_type = htons(EAD_AUTH_MD5);

 return 1;
}
