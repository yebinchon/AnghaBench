
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int bufferevent_free (struct bufferevent*) ;
 int bufferevent_getfd (struct bufferevent*) ;
 int info (char*,int ) ;

__attribute__((used)) static void be_free(struct bufferevent **bevp)
{
 evutil_socket_t fd;
 struct bufferevent *bev = *bevp;

 if (!bev)
  return;

 fd = bufferevent_getfd(bev);
 info("Freeing bufferevent with fd=%d\n", fd);

 bufferevent_free(bev);
 *bevp = ((void*)0);
}
