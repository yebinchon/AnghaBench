
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evhttp {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef int evutil_socket_t ;


 int evhttp_get_request (struct evhttp*,int ,struct sockaddr*,int) ;

__attribute__((used)) static void
accept_socket_cb(struct evconnlistener *listener, evutil_socket_t nfd, struct sockaddr *peer_sa, int peer_socklen, void *arg)
{
 struct evhttp *http = arg;

 evhttp_get_request(http, nfd, peer_sa, peer_socklen);
}
