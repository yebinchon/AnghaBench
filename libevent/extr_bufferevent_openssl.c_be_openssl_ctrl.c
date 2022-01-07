
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bufferevent_ctrl_data {TYPE_1__* ptr; void* fd; } ;
struct bufferevent_openssl {TYPE_1__* underlying; int old_state; int ssl; } ;
struct bufferevent {int ev_read; } ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;
struct TYPE_2__ {int ev_read; } ;
typedef int BIO ;






 int * BIO_new_bufferevent (TYPE_1__*) ;
 int * BIO_new_socket (int,int ) ;
 int SSL_set_bio (int ,int *,int *) ;
 int be_openssl_set_fd (struct bufferevent_openssl*,int ,void*) ;
 void* event_get_fd (int *) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_openssl_ctrl(struct bufferevent *bev,
    enum bufferevent_ctrl_op op, union bufferevent_ctrl_data *data)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);
 switch (op) {
 case 128:
  if (!bev_ssl->underlying) {
   BIO *bio;
   bio = BIO_new_socket((int)data->fd, 0);
   SSL_set_bio(bev_ssl->ssl, bio, bio);
  } else {
   BIO *bio;
   if (!(bio = BIO_new_bufferevent(bev_ssl->underlying)))
    return -1;
   SSL_set_bio(bev_ssl->ssl, bio, bio);
  }

  return be_openssl_set_fd(bev_ssl, bev_ssl->old_state, data->fd);
 case 130:
  if (bev_ssl->underlying) {
   data->fd = event_get_fd(&bev_ssl->underlying->ev_read);
  } else {
   data->fd = event_get_fd(&bev->ev_read);
  }
  return 0;
 case 129:
  data->ptr = bev_ssl->underlying;
  return 0;
 case 131:
 default:
  return -1;
 }
}
