
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
typedef int h2o_mimemap_t ;
struct TYPE_8__ {int ** mimemap; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_6__ {int base; } ;
struct TYPE_7__ {TYPE_1__ mimetype; } ;
struct TYPE_9__ {TYPE_2__ data; } ;


 int h2o_mem_release_shared (int *) ;
 int h2o_mimemap_clear_types (int *) ;
 int * h2o_mimemap_create () ;
 TYPE_5__* h2o_mimemap_get_default_type (int *) ;
 int h2o_mimemap_set_default_type (int *,int ,int *) ;
 scalar_t__ set_mimetypes (int *,int *,int *) ;

__attribute__((used)) static int on_config_mime_settypes(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    h2o_mimemap_t *newmap = h2o_mimemap_create();
    h2o_mimemap_clear_types(newmap);
    h2o_mimemap_set_default_type(newmap, h2o_mimemap_get_default_type(*ctx->mimemap)->data.mimetype.base, ((void*)0));
    if (set_mimetypes(cmd, newmap, node) != 0) {
        h2o_mem_release_shared(newmap);
        return -1;
    }

    h2o_mem_release_shared(*ctx->mimemap);
    *ctx->mimemap = newmap;
    return 0;
}
