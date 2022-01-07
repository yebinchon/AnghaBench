
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {int tcp; } ;
struct TYPE_7__ {scalar_t__ buf; } ;
struct TYPE_9__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; TYPE_2__ handle; TYPE_1__ t; } ;
typedef TYPE_3__ conn ;
struct TYPE_10__ {TYPE_3__ outgoing; TYPE_3__ incoming; } ;
typedef TYPE_4__ client_ctx ;
typedef int addr_storage ;


 int ASSERT (int) ;
 int CHECK (int) ;
 int UNREACHABLE () ;
 scalar_t__ c_stop ;
 int conn_write (TYPE_3__*,char*,int) ;
 int memcpy (char*,int *,int) ;
 int pr_err (char*,int ) ;
 int s_kill ;
 int s_proxy_start ;
 int uv_strerror (scalar_t__) ;
 scalar_t__ uv_tcp_getsockname (int *,struct sockaddr*,int*) ;

__attribute__((used)) static int do_req_connect(client_ctx *cx) {
  const struct sockaddr_in6 *in6;
  const struct sockaddr_in *in;
  char addr_storage[sizeof(*in6)];
  conn *incoming;
  conn *outgoing;
  uint8_t *buf;
  int addrlen;

  incoming = &cx->incoming;
  outgoing = &cx->outgoing;
  ASSERT(incoming->rdstate == c_stop);
  ASSERT(incoming->wrstate == c_stop);
  ASSERT(outgoing->rdstate == c_stop);
  ASSERT(outgoing->wrstate == c_stop);


  buf = (uint8_t *) incoming->t.buf;
  if (outgoing->result == 0) {



    addrlen = sizeof(addr_storage);
    CHECK(0 == uv_tcp_getsockname(&outgoing->handle.tcp,
                                  (struct sockaddr *) addr_storage,
                                  &addrlen));
    buf[0] = 5;
    buf[1] = 0;
    buf[2] = 0;
    if (addrlen == sizeof(*in)) {
      buf[3] = 1;
      in = (const struct sockaddr_in *) &addr_storage;
      memcpy(buf + 4, &in->sin_addr, 4);
      memcpy(buf + 8, &in->sin_port, 2);
      conn_write(incoming, buf, 10);
    } else if (addrlen == sizeof(*in6)) {
      buf[3] = 4;
      in6 = (const struct sockaddr_in6 *) &addr_storage;
      memcpy(buf + 4, &in6->sin6_addr, 16);
      memcpy(buf + 20, &in6->sin6_port, 2);
      conn_write(incoming, buf, 22);
    } else {
      UNREACHABLE();
    }
    return s_proxy_start;
  } else {
    pr_err("upstream connection error: %s\n", uv_strerror(outgoing->result));

    conn_write(incoming, "\5\5\0\1\0\0\0\0\0\0", 10);
    return s_kill;
  }

  UNREACHABLE();
  return s_kill;
}
