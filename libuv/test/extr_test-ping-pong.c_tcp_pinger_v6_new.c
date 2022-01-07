
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_3__ tcp; } ;
struct TYPE_7__ {int vectored_writes; TYPE_1__ stream; int connect_req; scalar_t__ pongs; scalar_t__ state; } ;
typedef TYPE_2__ pinger_t ;


 int ASSERT (int) ;
 int TEST_PORT ;
 TYPE_2__* malloc (int) ;
 int pinger_on_connect ;
 scalar_t__ pinger_on_connect_count ;
 int uv_default_loop () ;
 scalar_t__ uv_ip6_addr (char*,int ,struct sockaddr_in6*) ;
 int uv_tcp_connect (int *,TYPE_3__*,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,TYPE_3__*) ;

__attribute__((used)) static void tcp_pinger_v6_new(int vectored_writes) {
  int r;
  struct sockaddr_in6 server_addr;
  pinger_t *pinger;


  ASSERT(0 ==uv_ip6_addr("::1", TEST_PORT, &server_addr));
  pinger = malloc(sizeof(*pinger));
  ASSERT(pinger != ((void*)0));
  pinger->vectored_writes = vectored_writes;
  pinger->state = 0;
  pinger->pongs = 0;


  r = uv_tcp_init(uv_default_loop(), &pinger->stream.tcp);
  pinger->stream.tcp.data = pinger;
  ASSERT(!r);



  r = uv_tcp_connect(&pinger->connect_req,
                     &pinger->stream.tcp,
                     (const struct sockaddr*) &server_addr,
                     pinger_on_connect);
  ASSERT(!r);


  ASSERT(pinger_on_connect_count == 0);
}
