
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp_handler_t {int sockpool; } ;
typedef int h2o_handler_t ;


 int free (int ) ;
 int h2o_socketpool_dispose (int ) ;

__attribute__((used)) static void on_handler_dispose(h2o_handler_t *_self)
{
    struct rp_handler_t *self = (void *)_self;

    h2o_socketpool_dispose(self->sockpool);
    free(self->sockpool);
}
