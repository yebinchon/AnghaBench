
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_redis_socket_data_t {int socket; } ;


 int h2o_socket_is_writing (int ) ;
 int h2o_socket_notify_write (int ,int ) ;
 int on_write ;

__attribute__((used)) static void socket_add_write(void *privdata)
{
    struct st_redis_socket_data_t *p = (struct st_redis_socket_data_t *)privdata;
    if (!h2o_socket_is_writing(p->socket)) {
        h2o_socket_notify_write(p->socket, on_write);
    }
}
