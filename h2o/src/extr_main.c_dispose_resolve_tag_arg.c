
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* base; } ;
struct TYPE_9__ {int node; TYPE_1__ filename; } ;
typedef TYPE_3__ resolve_tag_node_cache_entry_t ;
struct TYPE_8__ {size_t size; TYPE_3__* entries; } ;
struct TYPE_10__ {TYPE_2__ node_cache; } ;
typedef TYPE_4__ resolve_tag_arg_t ;


 int free (TYPE_3__*) ;
 int yoml_free (int ,int *) ;

__attribute__((used)) static void dispose_resolve_tag_arg(resolve_tag_arg_t *arg)
{
    size_t i;
    for (i = 0; i != arg->node_cache.size; ++i) {
        resolve_tag_node_cache_entry_t *cached = arg->node_cache.entries + i;
        free(cached->filename.base);
        yoml_free(cached->node, ((void*)0));
    }
    free(arg->node_cache.entries);
}
