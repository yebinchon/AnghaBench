
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int input; int * ssl; } ;
typedef TYPE_1__ h2o_socket_export_t ;


 int assert (int) ;
 int close (int) ;
 int destroy_ssl (int *) ;
 int h2o_buffer_dispose (int *) ;

void h2o_socket_dispose_export(h2o_socket_export_t *info)
{
    assert(info->fd != -1);
    if (info->ssl != ((void*)0)) {
        destroy_ssl(info->ssl);
        info->ssl = ((void*)0);
    }
    h2o_buffer_dispose(&info->input);
    close(info->fd);
    info->fd = -1;
}
