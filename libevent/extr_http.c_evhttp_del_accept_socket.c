
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_bound_socket {int listener; } ;
struct evhttp {int sockets; } ;


 int TAILQ_REMOVE (int *,struct evhttp_bound_socket*,int ) ;
 int evconnlistener_free (int ) ;
 int mm_free (struct evhttp_bound_socket*) ;
 int next ;

void
evhttp_del_accept_socket(struct evhttp *http, struct evhttp_bound_socket *bound)
{
 TAILQ_REMOVE(&http->sockets, bound, next);
 evconnlistener_free(bound->listener);
 mm_free(bound);
}
