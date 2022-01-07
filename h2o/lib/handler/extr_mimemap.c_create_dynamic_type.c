
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pathconf; } ;
struct TYPE_6__ {TYPE_3__ dynamic; } ;
struct TYPE_7__ {TYPE_1__ data; int type; } ;
typedef TYPE_2__ h2o_mimemap_type_t ;
typedef int h2o_mimemap_t ;
typedef int h2o_globalconf_t ;


 int H2O_MIMEMAP_TYPE_DYNAMIC ;
 scalar_t__ dispose_dynamic_type ;
 int h2o_config_init_pathconf (int *,int *,int *,int *) ;
 TYPE_2__* h2o_mem_alloc_shared (int *,int,void (*) (void*)) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static h2o_mimemap_type_t *create_dynamic_type(h2o_globalconf_t *globalconf, h2o_mimemap_t *mimemap)
{
    h2o_mimemap_type_t *type = h2o_mem_alloc_shared(((void*)0), sizeof(*type), (void (*)(void *))dispose_dynamic_type);

    type->type = H2O_MIMEMAP_TYPE_DYNAMIC;
    memset(&type->data.dynamic, 0, sizeof(type->data.dynamic));
    h2o_config_init_pathconf(&type->data.dynamic.pathconf, globalconf, ((void*)0), mimemap);

    return type;
}
