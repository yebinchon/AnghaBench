
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pathconf; } ;
struct TYPE_6__ {TYPE_1__ dynamic; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
typedef TYPE_3__ h2o_mimemap_type_t ;


 int h2o_config_dispose_pathconf (int *) ;

__attribute__((used)) static void dispose_dynamic_type(h2o_mimemap_type_t *type)
{
    h2o_config_dispose_pathconf(&type->data.dynamic.pathconf);
}
