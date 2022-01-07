
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_fcgi_generator_t {TYPE_2__* handler; } ;
struct TYPE_7__ {struct st_fcgi_generator_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_5__ {int io_timeout; } ;
struct TYPE_6__ {TYPE_1__ config; } ;


 int on_rw_timeout ;
 int set_timeout (struct st_fcgi_generator_t*,int ,int ) ;

__attribute__((used)) static void on_send_complete(h2o_socket_t *sock, const char *err)
{
    struct st_fcgi_generator_t *generator = sock->data;

    set_timeout(generator, generator->handler->config.io_timeout, on_rw_timeout);

}
