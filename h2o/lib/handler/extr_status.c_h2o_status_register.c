
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int on_req; int on_context_dispose; int on_context_init; } ;
struct st_h2o_root_status_handler_t {TYPE_1__ super; } ;
struct TYPE_6__ {int global; } ;
typedef TYPE_2__ h2o_pathconf_t ;


 int h2o_config_register_status_handler (int ,int *) ;
 scalar_t__ h2o_create_handler (TYPE_2__*,int) ;
 int h2o_durations_status_handler ;
 int h2o_events_status_handler ;
 int h2o_requests_status_handler ;
 int h2o_ssl_status_handler ;
 int on_context_dispose ;
 int on_context_init ;
 int on_req ;

void h2o_status_register(h2o_pathconf_t *conf)
{
    struct st_h2o_root_status_handler_t *self = (void *)h2o_create_handler(conf, sizeof(*self));
    self->super.on_context_init = on_context_init;
    self->super.on_context_dispose = on_context_dispose;
    self->super.on_req = on_req;
    h2o_config_register_status_handler(conf->global, &h2o_requests_status_handler);
    h2o_config_register_status_handler(conf->global, &h2o_events_status_handler);
    h2o_config_register_status_handler(conf->global, &h2o_ssl_status_handler);
    h2o_config_register_status_handler(conf->global, &h2o_durations_status_handler);
}
