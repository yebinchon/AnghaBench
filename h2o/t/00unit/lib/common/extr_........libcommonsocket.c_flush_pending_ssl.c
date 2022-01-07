
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* ssl; } ;
typedef TYPE_4__ h2o_socket_t ;
typedef int h2o_socket_cb ;
struct TYPE_7__ {int size; int entries; } ;
struct TYPE_8__ {TYPE_1__ bufs; } ;
struct TYPE_9__ {TYPE_2__ output; } ;


 int do_write (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static void flush_pending_ssl(h2o_socket_t *sock, h2o_socket_cb cb)
{
    do_write(sock, sock->ssl->output.bufs.entries, sock->ssl->output.bufs.size, cb);
}
