
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; TYPE_3__* input; } ;
typedef TYPE_1__ h2o_socket_t ;
struct TYPE_5__ {int size; } ;


 int h2o_buffer_consume (TYPE_3__**,int ) ;
 int h2o_fatal (char*,char const*) ;
 int queue_cb (int ) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {
        h2o_fatal("on_read: %s", err);
    }

    h2o_buffer_consume(&sock->input, sock->input->size);
    queue_cb(sock->data);
}
