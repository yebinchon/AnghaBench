
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int options; } ;
struct bufferevent_openssl {TYPE_2__* underlying; TYPE_1__ bev; } ;
struct bufferevent {int dummy; } ;
struct TYPE_9__ {int refcnt; } ;
struct TYPE_8__ {scalar_t__ errorcb; } ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_SUSPEND_FILT_READ ;
 TYPE_5__* BEV_UPCAST (TYPE_2__*) ;
 scalar_t__ be_openssl_eventcb ;
 int bufferevent_free (TYPE_2__*) ;
 int bufferevent_setcb (TYPE_2__*,int *,int *,int *,int *) ;
 int bufferevent_unsuspend_read_ (TYPE_2__*,int ) ;
 int event_warnx (char*) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_openssl_unlink(struct bufferevent *bev)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);

 if (bev_ssl->bev.options & BEV_OPT_CLOSE_ON_FREE) {
  if (bev_ssl->underlying) {
   if (BEV_UPCAST(bev_ssl->underlying)->refcnt < 2) {
    event_warnx("BEV_OPT_CLOSE_ON_FREE set on an "
        "bufferevent with too few references");
   } else {
    bufferevent_free(bev_ssl->underlying);



   }
  }
 } else {
  if (bev_ssl->underlying) {
   if (bev_ssl->underlying->errorcb == be_openssl_eventcb)
    bufferevent_setcb(bev_ssl->underlying,
        ((void*)0),((void*)0),((void*)0),((void*)0));
   bufferevent_unsuspend_read_(bev_ssl->underlying,
       BEV_SUSPEND_FILT_READ);
  }
 }
}
