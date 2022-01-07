
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;


 int AF_INET ;
 int SOCK_STREAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 int htonl (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int tt_assert (int) ;

__attribute__((used)) static evutil_socket_t
fake_listener_create(struct sockaddr_in *localhost)
{
 struct sockaddr *sa = (struct sockaddr *)localhost;
 evutil_socket_t fd = -1;
 ev_socklen_t slen = sizeof(*localhost);

 memset(localhost, 0, sizeof(*localhost));
 localhost->sin_port = 0;
 localhost->sin_addr.s_addr = htonl(0x7f000001L);
 localhost->sin_family = AF_INET;



 fd = socket(localhost->sin_family, SOCK_STREAM, 0);
 tt_assert(fd >= 0);
 tt_assert(bind(fd, sa, slen) == 0);
 tt_assert(getsockname(fd, sa, &slen) == 0);

 return fd;

end:
 return -1;
}
