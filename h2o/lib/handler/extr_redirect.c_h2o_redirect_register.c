
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int on_req; int dispose; } ;
struct TYPE_5__ {int internal; int status; int prefix; TYPE_1__ super; } ;
typedef TYPE_2__ h2o_redirect_handler_t ;
typedef int h2o_pathconf_t ;


 int SIZE_MAX ;
 scalar_t__ h2o_create_handler (int *,int) ;
 int h2o_strdup (int *,char const*,int ) ;
 int on_dispose ;
 int on_req ;

h2o_redirect_handler_t *h2o_redirect_register(h2o_pathconf_t *pathconf, int internal, int status, const char *prefix)
{
    h2o_redirect_handler_t *self = (void *)h2o_create_handler(pathconf, sizeof(*self));
    self->super.dispose = on_dispose;
    self->super.on_req = on_req;
    self->internal = internal;
    self->status = status;
    self->prefix = h2o_strdup(((void*)0), prefix, SIZE_MAX);
    return self;
}
