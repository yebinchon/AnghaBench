
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_redis_socket_data_t {int context; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ h2o_socket_t ;


 int redisAsyncHandleRead (int ) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    struct st_redis_socket_data_t *p = (struct st_redis_socket_data_t *)sock->data;
    redisAsyncHandleRead(p->context);
}
