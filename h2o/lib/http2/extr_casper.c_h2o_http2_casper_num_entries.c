
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {TYPE_1__ keys; } ;
typedef TYPE_2__ h2o_http2_casper_t ;



size_t h2o_http2_casper_num_entries(h2o_http2_casper_t *casper)
{
    return casper->keys.size;
}
