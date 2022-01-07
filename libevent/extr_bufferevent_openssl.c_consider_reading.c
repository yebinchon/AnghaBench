
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int enabled; int ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; scalar_t__ read_suspended; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; int ssl; scalar_t__ write_blocked_on_read; } ;


 int EV_READ ;
 int OP_BLOCKED ;
 int OP_ERR ;
 int OP_MADE_PROGRESS ;
 int SSL_pending (int ) ;
 int WRITE_FRAME ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int,int ) ;
 int bytes_to_read (struct bufferevent_openssl*) ;
 int do_read (struct bufferevent_openssl*,int) ;
 int do_write (struct bufferevent_openssl*,int ) ;
 int event_del (int *) ;

__attribute__((used)) static void
consider_reading(struct bufferevent_openssl *bev_ssl)
{
 int r;
 int n_to_read;
 int all_result_flags = 0;

 while (bev_ssl->write_blocked_on_read) {
  r = do_write(bev_ssl, WRITE_FRAME);
  if (r & (OP_BLOCKED|OP_ERR))
   break;
 }
 if (bev_ssl->write_blocked_on_read)
  return;

 n_to_read = bytes_to_read(bev_ssl);

 while (n_to_read) {
  r = do_read(bev_ssl, n_to_read);
  all_result_flags |= r;

  if (r & (OP_BLOCKED|OP_ERR))
   break;

  if (bev_ssl->bev.read_suspended)
   break;
  n_to_read = SSL_pending(bev_ssl->ssl);
  if (!n_to_read && bev_ssl->underlying)
   n_to_read = bytes_to_read(bev_ssl);
 }

 if (all_result_flags & OP_MADE_PROGRESS) {
  struct bufferevent *bev = &bev_ssl->bev.bev;

  bufferevent_trigger_nolock_(bev, EV_READ, 0);
 }

 if (!bev_ssl->underlying) {

  if (bev_ssl->bev.read_suspended ||
      !(bev_ssl->bev.bev.enabled & EV_READ)) {
   event_del(&bev_ssl->bev.bev.ev_read);
  }
 }
}
