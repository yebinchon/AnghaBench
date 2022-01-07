
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_mimemap_type_t ;
struct TYPE_3__ {int * default_type; } ;
typedef TYPE_1__ h2o_mimemap_t ;



h2o_mimemap_type_t *h2o_mimemap_get_default_type(h2o_mimemap_t *mimemap)
{
    return mimemap->default_type;
}
