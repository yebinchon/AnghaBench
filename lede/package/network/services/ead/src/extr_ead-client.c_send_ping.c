
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int type; } ;


 int EAD_TYPE_PING ;
 int EAD_TYPE_PONG ;
 int handle_pong ;
 int htonl (int ) ;
 TYPE_1__* msg ;
 int nid ;
 int send_packet (int ,int ,int) ;

__attribute__((used)) static int
send_ping(void)
{
 msg->type = htonl(EAD_TYPE_PING);
 msg->len = 0;
 return send_packet(EAD_TYPE_PONG, handle_pong, (nid == 0xffff ? 0 : 1));
}
