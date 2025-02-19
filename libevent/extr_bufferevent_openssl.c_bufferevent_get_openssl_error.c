
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {size_t n_errors; unsigned long* errors; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

unsigned long
bufferevent_get_openssl_error(struct bufferevent *bev)
{
 unsigned long err = 0;
 struct bufferevent_openssl *bev_ssl;
 BEV_LOCK(bev);
 bev_ssl = upcast(bev);
 if (bev_ssl && bev_ssl->n_errors) {
  err = bev_ssl->errors[--bev_ssl->n_errors];
 }
 BEV_UNLOCK(bev);
 return err;
}
