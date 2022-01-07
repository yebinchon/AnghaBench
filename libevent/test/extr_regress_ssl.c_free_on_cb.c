
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int TT_BLATHER (char*) ;
 int bufferevent_free (struct bufferevent*) ;

__attribute__((used)) static void
free_on_cb(struct bufferevent *bev, void *ctx)
{
 TT_BLATHER(("free_on_cb: %p", bev));
 bufferevent_free(bev);
}
