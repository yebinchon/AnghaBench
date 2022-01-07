
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int udp_type_t ;
struct TYPE_5__ {int fd; int our_port; scalar_t__ ev; void* extra; int * type; int flags; } ;
struct TYPE_4__ {TYPE_3__ u; } ;
typedef TYPE_1__ tftp_connection_t ;
typedef int opt ;


 int EVT_LEVEL ;
 int EVT_READ ;
 int EVT_SPEC ;
 scalar_t__ Events ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_RECVPKTINFO ;
 int IP_PKTINFO ;
 int MAX_EVENTS ;
 int SM_IPV6 ;
 int U_IPV6 ;
 int assert (int) ;
 scalar_t__ check_udp_functions (int *) ;
 int epoll_insert (int,int) ;
 int epoll_sethandler (int,int,int ,TYPE_3__*) ;
 int kprintf (char*,int) ;
 int server_receive_udp ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int tftp_init_udp_port (tftp_connection_t *c, int sfd, int port, udp_type_t *type, void *extra, int mode) {
  if (check_udp_functions (type) < 0) {
    return -1;
  }
  assert (sfd > 2 && sfd < MAX_EVENTS);
  int opt = 1;
  if (setsockopt (sfd, IPPROTO_IP, IP_PKTINFO, &opt, sizeof (opt)) < 0) {
    kprintf ("setsockopt for %d failed: %m\n", sfd);
  }
  if ((mode & SM_IPV6) && setsockopt (sfd, IPPROTO_IPV6, IPV6_RECVPKTINFO, &opt, sizeof (opt)) < 0) {
    kprintf ("setsockopt for %d failed: %m\n", sfd);
  }
  c->u.fd = sfd;
  c->u.flags = mode & SM_IPV6 ? U_IPV6 : 0;
  c->u.type = type;
  c->u.extra = extra;
  c->u.ev = Events + sfd;
  c->u.our_port = port;
  epoll_sethandler (sfd, -5, server_receive_udp, &c->u);
  epoll_insert (sfd, EVT_LEVEL | EVT_READ | EVT_SPEC);
  return 0;
}
