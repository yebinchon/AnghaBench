
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int scalar; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
struct TYPE_10__ {int * mimemap; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ assert_is_mimetype (int *,TYPE_2__*) ;
 int clone_mimemap_if_clean (TYPE_3__*) ;
 int h2o_mimemap_set_default_type (int ,int ,int *) ;

__attribute__((used)) static int on_config_mime_setdefaulttype(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (assert_is_mimetype(cmd, node) != 0)
        return -1;

    clone_mimemap_if_clean(ctx);
    h2o_mimemap_set_default_type(*ctx->mimemap, node->data.scalar, ((void*)0));

    return 0;
}
