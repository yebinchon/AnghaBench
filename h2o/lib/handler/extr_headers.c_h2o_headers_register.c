
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int on_informational; int on_setup_ostream; } ;
struct st_headers_filter_t {int * cmds; TYPE_1__ super; } ;
struct TYPE_12__ {int on_req; } ;
struct st_headers_early_hints_handler_t {TYPE_4__ super; int * cmds; } ;
struct TYPE_10__ {int size; TYPE_4__** entries; } ;
struct TYPE_11__ {TYPE_2__ handlers; } ;
typedef TYPE_3__ h2o_pathconf_t ;
typedef int h2o_headers_command_t ;
typedef int h2o_handler_t ;


 scalar_t__ h2o_create_filter (TYPE_3__*,int) ;
 scalar_t__ h2o_create_handler (TYPE_3__*,int) ;
 int memmove (TYPE_4__**,TYPE_4__**,int) ;
 int on_informational ;
 int on_req ;
 int on_setup_ostream ;
 scalar_t__ requires_early_hints_handler (struct st_headers_filter_t*) ;

void h2o_headers_register(h2o_pathconf_t *pathconf, h2o_headers_command_t *cmds)
{
    struct st_headers_filter_t *self = (void *)h2o_create_filter(pathconf, sizeof(*self));

    self->super.on_setup_ostream = on_setup_ostream;
    self->super.on_informational = on_informational;
    self->cmds = cmds;

    if (requires_early_hints_handler(self)) {
        struct st_headers_early_hints_handler_t *handler = (void *)h2o_create_handler(pathconf, sizeof(*handler));
        handler->cmds = cmds;
        handler->super.on_req = on_req;


        memmove(pathconf->handlers.entries + 1, pathconf->handlers.entries,
                sizeof(h2o_handler_t *) * (pathconf->handlers.size - 1));
        pathconf->handlers.entries[0] = &handler->super;
    }
}
