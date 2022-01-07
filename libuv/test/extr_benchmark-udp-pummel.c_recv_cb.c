
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_udp_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ AF_INET ;
 int ASSERT (int) ;
 int EXPECTED ;
 scalar_t__ UV_ECANCELED ;
 int memcmp (int ,int ,scalar_t__) ;
 int recv_cb_called ;

__attribute__((used)) static void recv_cb(uv_udp_t* handle,
                    ssize_t nread,
                    const uv_buf_t* buf,
                    const struct sockaddr* addr,
                    unsigned flags) {
  if (nread == 0)
    return;

  if (nread < 0) {
    ASSERT(nread == UV_ECANCELED);
    return;
  }

  ASSERT(addr->sa_family == AF_INET);
  ASSERT(!memcmp(buf->base, EXPECTED, nread));

  recv_cb_called++;
}
