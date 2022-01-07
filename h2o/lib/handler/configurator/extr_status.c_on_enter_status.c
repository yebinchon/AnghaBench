
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
struct st_status_configurator {int stack; } ;
typedef int h2o_configurator_t ;
typedef int h2o_configurator_context_t ;



int on_enter_status(h2o_configurator_t *_conf, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_status_configurator *c = (void *)_conf;
    c->stack++;
    return 0;
}
