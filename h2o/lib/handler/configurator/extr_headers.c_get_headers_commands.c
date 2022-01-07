
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct headers_configurator_t {int ** cmds; } ;
typedef int h2o_headers_command_t ;
typedef int h2o_configurator_t ;



__attribute__((used)) static h2o_headers_command_t **get_headers_commands(h2o_configurator_t *_self)
{
    struct headers_configurator_t *self = (void *)_self;
    return self->cmds;
}
