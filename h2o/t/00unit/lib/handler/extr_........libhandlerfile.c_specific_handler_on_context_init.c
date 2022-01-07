
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_specific_file_handler_t {TYPE_3__* mime_type; } ;
typedef int h2o_handler_t ;
typedef int h2o_context_t ;
struct TYPE_4__ {int pathconf; } ;
struct TYPE_5__ {TYPE_1__ dynamic; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ data; } ;


 scalar_t__ H2O_MIMEMAP_TYPE_DYNAMIC ;
 int h2o_context_init_pathconf_context (int *,int *) ;

__attribute__((used)) static void specific_handler_on_context_init(h2o_handler_t *_self, h2o_context_t *ctx)
{
    struct st_h2o_specific_file_handler_t *self = (void *)_self;

    if (self->mime_type->type == H2O_MIMEMAP_TYPE_DYNAMIC)
        h2o_context_init_pathconf_context(ctx, &self->mime_type->data.dynamic.pathconf);
}
