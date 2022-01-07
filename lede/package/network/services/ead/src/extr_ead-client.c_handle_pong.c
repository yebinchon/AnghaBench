
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ead_msg_pong {char* name; int auth_type; } ;
struct TYPE_3__ {int sid; int nid; int len; } ;


 struct ead_msg_pong* EAD_DATA (TYPE_1__*,int ) ;
 int auth_type ;
 TYPE_1__* msg ;
 int nid ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 struct ead_msg_pong* pong ;
 int printf (char*,int,char*) ;
 int sid ;

__attribute__((used)) static bool
handle_pong(void)
{
 struct ead_msg_pong *pong = EAD_DATA(msg, pong);
 int len = ntohl(msg->len) - sizeof(struct ead_msg_pong);

 if (len <= 0)
  return 0;

 pong->name[len] = 0;
 auth_type = ntohs(pong->auth_type);
 if (nid == 0xffff)
  printf("%04x: %s\n", ntohs(msg->nid), pong->name);
 sid = msg->sid;
 return 1;
}
