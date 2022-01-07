
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t size; TYPE_3__** elements; } ;
struct TYPE_10__ {scalar_t__ scalar; TYPE_1__ sequence; } ;
struct TYPE_11__ {TYPE_2__ data; } ;
typedef TYPE_3__ yoml_t ;
struct TYPE_12__ {int * mimemap; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ assert_is_extension (int *,TYPE_3__*) ;
 int clone_mimemap_if_clean (TYPE_4__*) ;
 int h2o_mimemap_remove_type (int ,scalar_t__) ;

__attribute__((used)) static int on_config_mime_removetypes(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    size_t i;

    clone_mimemap_if_clean(ctx);
    for (i = 0; i != node->data.sequence.size; ++i) {
        yoml_t *ext_node = node->data.sequence.elements[i];
        if (assert_is_extension(cmd, ext_node) != 0)
            return -1;
        h2o_mimemap_remove_type(*ctx->mimemap, ext_node->data.scalar + 1);
    }

    return 0;
}
