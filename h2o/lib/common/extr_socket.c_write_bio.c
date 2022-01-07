
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_5__ {int* did_write_in_read; } ;
typedef int BIO ;


 TYPE_2__* BIO_get_data (int *) ;
 int write_ssl_bytes (TYPE_2__*,char const*,int) ;

__attribute__((used)) static int write_bio(BIO *b, const char *in, int len)
{
    h2o_socket_t *sock = BIO_get_data(b);


    if (sock->ssl->did_write_in_read != ((void*)0)) {
        *sock->ssl->did_write_in_read = 1;
        return -1;
    }

    write_ssl_bytes(sock, in, len);
    return len;
}
