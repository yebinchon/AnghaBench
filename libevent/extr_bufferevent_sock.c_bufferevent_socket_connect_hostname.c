
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int ai_family; int ai_socktype; int ai_protocol; } ;
struct evdns_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int hint ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int bufferevent_socket_connect_hostname_hints (struct bufferevent*,struct evdns_base*,struct evutil_addrinfo*,char const*,int) ;
 int memset (struct evutil_addrinfo*,int ,int) ;

int
bufferevent_socket_connect_hostname(struct bufferevent *bev,
    struct evdns_base *evdns_base, int family, const char *hostname, int port)
{
 struct evutil_addrinfo hint;
 memset(&hint, 0, sizeof(hint));
 hint.ai_family = family;
 hint.ai_protocol = IPPROTO_TCP;
 hint.ai_socktype = SOCK_STREAM;

 return bufferevent_socket_connect_hostname_hints(bev, evdns_base, &hint, hostname, port);
}
