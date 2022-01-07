
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int (* read ) (TYPE_5__*,char const*) ;} ;
struct TYPE_12__ {size_t bytes_read; TYPE_4__ _cb; TYPE_6__* input; TYPE_3__* ssl; } ;
struct st_h2o_evloop_socket_t {int _flags; TYPE_5__ super; int fd; } ;
struct TYPE_13__ {size_t size; } ;
struct TYPE_9__ {int * cb; } ;
struct TYPE_8__ {TYPE_6__* encrypted; } ;
struct TYPE_10__ {TYPE_2__ handshake; TYPE_1__ input; } ;


 int H2O_SOCKET_FLAG_DONT_READ ;
 char* decode_ssl_input (TYPE_5__*) ;
 char* on_read_core (int ,TYPE_6__**) ;
 int stub1 (TYPE_5__*,char const*) ;

__attribute__((used)) static void read_on_ready(struct st_h2o_evloop_socket_t *sock)
{
    const char *err = 0;
    size_t prev_bytes_read = sock->super.input->size;

    if ((sock->_flags & H2O_SOCKET_FLAG_DONT_READ) != 0)
        goto Notify;

    if ((err = on_read_core(sock->fd, sock->super.ssl == ((void*)0) ? &sock->super.input : &sock->super.ssl->input.encrypted)) != ((void*)0))
        goto Notify;

    if (sock->super.ssl != ((void*)0) && sock->super.ssl->handshake.cb == ((void*)0))
        err = decode_ssl_input(&sock->super);

Notify:




    sock->super.bytes_read = sock->super.input->size - prev_bytes_read;
    sock->super._cb.read(&sock->super, err);
}
