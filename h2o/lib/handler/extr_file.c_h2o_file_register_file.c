
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int on_req; int dispose; int on_context_dispose; int on_context_init; } ;
struct st_h2o_specific_file_handler_t {int flags; TYPE_1__ super; int * mime_type; int real_path; } ;
typedef int h2o_pathconf_t ;
typedef int h2o_mimemap_type_t ;
typedef TYPE_1__ h2o_handler_t ;


 int SIZE_MAX ;
 scalar_t__ h2o_create_handler (int *,int) ;
 int h2o_mem_addref_shared (int *) ;
 int h2o_strdup (int *,char const*,int ) ;
 int specific_handler_on_context_dispose ;
 int specific_handler_on_context_init ;
 int specific_handler_on_dispose ;
 int specific_handler_on_req ;

h2o_handler_t *h2o_file_register_file(h2o_pathconf_t *pathconf, const char *real_path, h2o_mimemap_type_t *mime_type, int flags)
{
    struct st_h2o_specific_file_handler_t *self = (void *)h2o_create_handler(pathconf, sizeof(*self));

    self->super.on_context_init = specific_handler_on_context_init;
    self->super.on_context_dispose = specific_handler_on_context_dispose;
    self->super.dispose = specific_handler_on_dispose;
    self->super.on_req = specific_handler_on_req;

    self->real_path = h2o_strdup(((void*)0), real_path, SIZE_MAX);
    h2o_mem_addref_shared(mime_type);
    self->mime_type = mime_type;
    self->flags = flags;

    return &self->super;
}
