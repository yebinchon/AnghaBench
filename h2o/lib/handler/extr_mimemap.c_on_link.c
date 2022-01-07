
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ h2o_mimemap_type_t ;
struct TYPE_6__ {int num_dynamic; } ;
typedef TYPE_2__ h2o_mimemap_t ;





__attribute__((used)) static void on_link(h2o_mimemap_t *mimemap, h2o_mimemap_type_t *type)
{
    switch (type->type) {
    case 128:
        break;
    case 129:
        ++mimemap->num_dynamic;
        break;
    }
}
