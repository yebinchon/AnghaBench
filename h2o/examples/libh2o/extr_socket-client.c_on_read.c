
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* input; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_5__ {int size; int bytes; } ;


 int exit_loop ;
 int fprintf (int ,char*,char const*) ;
 int fwrite (int ,int,int ,int ) ;
 int h2o_socket_close (TYPE_2__*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {

        fprintf(stderr, "read failed:%s\n", err);
        h2o_socket_close(sock);
        exit_loop = 1;
        return;
    }

    fwrite(sock->input->bytes, 1, sock->input->size, stdout);
}
