
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* ssl; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_9__ {int size; int bytes; } ;
struct TYPE_6__ {TYPE_4__* encrypted; } ;
struct TYPE_7__ {TYPE_1__ input; } ;
typedef int BIO ;


 TYPE_3__* BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 int h2o_buffer_consume (TYPE_4__**,int) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static int read_bio(BIO *b, char *out, int len)
{
    h2o_socket_t *sock = BIO_get_data(b);

    if (len == 0)
        return 0;

    if (sock->ssl->input.encrypted->size == 0) {
        BIO_set_retry_read(b);
        return -1;
    }

    if (sock->ssl->input.encrypted->size < len) {
        len = (int)sock->ssl->input.encrypted->size;
    }
    memcpy(out, sock->ssl->input.encrypted->bytes, len);
    h2o_buffer_consume(&sock->ssl->input.encrypted, len);

    return len;
}
