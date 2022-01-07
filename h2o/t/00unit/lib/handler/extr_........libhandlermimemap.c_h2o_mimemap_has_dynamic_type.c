
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_dynamic; } ;
typedef TYPE_1__ h2o_mimemap_t ;



int h2o_mimemap_has_dynamic_type(h2o_mimemap_t *mimemap)
{
    return mimemap->num_dynamic != 0;
}
