
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_redis_socket_data_t {TYPE_2__* context; int socket; } ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {TYPE_1__ c; } ;


 int free (struct st_redis_socket_data_t*) ;
 int h2o_socket_close (int ) ;

__attribute__((used)) static void socket_cleanup(void *privdata)
{
    struct st_redis_socket_data_t *p = (struct st_redis_socket_data_t *)privdata;
    h2o_socket_close(p->socket);
    p->context->c.fd = -1;
    free(p);
}
