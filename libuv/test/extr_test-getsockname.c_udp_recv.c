
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_udp_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int sockname ;


 int ASSERT (int) ;
 int check_sockname (struct sockaddr*,char*,int ,char*) ;
 int free (int ) ;
 int getsocknamecount ;
 int memset (struct sockaddr*,int,int) ;
 int udp ;
 int uv_close (int *,int *) ;
 int uv_udp_getsockname (int *,struct sockaddr*,int*) ;

__attribute__((used)) static void udp_recv(uv_udp_t* handle,
                     ssize_t nread,
                     const uv_buf_t* buf,
                     const struct sockaddr* addr,
                     unsigned flags) {
  struct sockaddr sockname;
  int namelen;
  int r;

  ASSERT(nread >= 0);
  free(buf->base);

  if (nread == 0) {
    return;
  }

  memset(&sockname, -1, sizeof sockname);
  namelen = sizeof(sockname);
  r = uv_udp_getsockname(&udp, &sockname, &namelen);
  ASSERT(r == 0);
  check_sockname(&sockname, "0.0.0.0", 0, "udp receiving socket");
  getsocknamecount++;

  uv_close((uv_handle_t*) &udp, ((void*)0));
  uv_close((uv_handle_t*) handle, ((void*)0));
}
