
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int input; TYPE_2__* ssl; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_13__ {int fd; int input; TYPE_2__* ssl; } ;
typedef TYPE_4__ h2o_socket_export_t ;
typedef int h2o_loop_t ;
struct TYPE_10__ {int encrypted; } ;
struct TYPE_11__ {TYPE_1__ input; } ;


 int assert (int) ;
 TYPE_3__* do_import (int *,TYPE_4__*) ;
 int h2o_buffer_set_prototype (int *,int *) ;
 int h2o_socket_buffer_prototype ;
 int setup_bio (TYPE_3__*) ;

h2o_socket_t *h2o_socket_import(h2o_loop_t *loop, h2o_socket_export_t *info)
{
    h2o_socket_t *sock;

    assert(info->fd != -1);

    sock = do_import(loop, info);
    info->fd = -1;
    if ((sock->ssl = info->ssl) != ((void*)0)) {
        setup_bio(sock);
        h2o_buffer_set_prototype(&sock->ssl->input.encrypted, &h2o_socket_buffer_prototype);
    }
    sock->input = info->input;
    h2o_buffer_set_prototype(&sock->input, &h2o_socket_buffer_prototype);
    return sock;
}
