
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on_req; } ;
struct st_h2o_http2_debug_state_handler_t {int hpack_enabled; TYPE_1__ super; } ;
typedef int h2o_pathconf_t ;
typedef int h2o_hostconf_t ;


 int * h2o_config_register_path (int *,char*,int ) ;
 scalar_t__ h2o_create_handler (int *,int) ;
 int on_req ;

void h2o_http2_debug_state_register(h2o_hostconf_t *conf, int hpack_enabled)
{
    h2o_pathconf_t *pathconf = h2o_config_register_path(conf, "/.well-known/h2/state", 0);
    struct st_h2o_http2_debug_state_handler_t *self = (void *)h2o_create_handler(pathconf, sizeof(*self));
    self->super.on_req = on_req;
    self->hpack_enabled = hpack_enabled;
}
