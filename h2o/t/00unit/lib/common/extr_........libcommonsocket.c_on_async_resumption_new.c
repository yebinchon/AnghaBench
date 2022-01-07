
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_socket_t ;
struct TYPE_3__ {scalar_t__ base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int SSL_SESSION ;
typedef int SSL ;


 int * BIO_get_data (int ) ;
 unsigned char* SSL_SESSION_get_id (int *,unsigned int*) ;
 int SSL_get_rbio (int *) ;
 scalar_t__ alloca (int ) ;
 int h2o_iovec_init (unsigned char const*,unsigned int) ;
 int i2d_SSL_SESSION (int *,unsigned char**) ;
 int resumption_new (int *,int ,TYPE_1__) ;

__attribute__((used)) static int on_async_resumption_new(SSL *ssl, SSL_SESSION *session)
{
    h2o_socket_t *sock = BIO_get_data(SSL_get_rbio(ssl));

    h2o_iovec_t data;
    const unsigned char *id;
    unsigned id_len;
    unsigned char *p;


    data.len = i2d_SSL_SESSION(session, ((void*)0));
    data.base = alloca(data.len);
    p = (void *)data.base;
    i2d_SSL_SESSION(session, &p);

    id = SSL_SESSION_get_id(session, &id_len);
    resumption_new(sock, h2o_iovec_init(id, id_len), data);
    return 0;
}
