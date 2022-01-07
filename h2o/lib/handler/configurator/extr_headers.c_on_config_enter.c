
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
struct headers_configurator_t {int ** cmds; } ;
typedef int h2o_configurator_t ;
typedef int h2o_configurator_context_t ;


 int h2o_mem_addref_shared (int *) ;

__attribute__((used)) static int on_config_enter(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct headers_configurator_t *self = (void *)_self;

    self->cmds[1] = self->cmds[0];
    if (self->cmds[1] != ((void*)0))
        h2o_mem_addref_shared(self->cmds[1]);

    ++self->cmds;
    return 0;
}
