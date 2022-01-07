
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct addrinfo {int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hints ;
struct TYPE_7__ {int addrinfo_req; } ;
struct TYPE_10__ {TYPE_1__ t; TYPE_3__* client; } ;
typedef TYPE_4__ conn ;
struct TYPE_9__ {TYPE_2__* sx; } ;
struct TYPE_8__ {int loop; } ;


 int AF_UNSPEC ;
 int CHECK (int) ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int conn_getaddrinfo_done ;
 int conn_timer_reset (TYPE_4__*) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ uv_getaddrinfo (int ,int *,int ,char const*,int *,struct addrinfo*) ;

__attribute__((used)) static void conn_getaddrinfo(conn *c, const char *hostname) {
  struct addrinfo hints;

  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  CHECK(0 == uv_getaddrinfo(c->client->sx->loop,
                            &c->t.addrinfo_req,
                            conn_getaddrinfo_done,
                            hostname,
                            ((void*)0),
                            &hints));
  conn_timer_reset(c);
}
