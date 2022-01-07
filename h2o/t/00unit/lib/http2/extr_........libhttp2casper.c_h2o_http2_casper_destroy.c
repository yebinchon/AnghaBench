
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* base; } ;
struct TYPE_6__ {TYPE_3__* entries; } ;
struct TYPE_8__ {TYPE_2__ cookie_cache; TYPE_1__ keys; } ;
typedef TYPE_3__ h2o_http2_casper_t ;


 int free (TYPE_3__*) ;

void h2o_http2_casper_destroy(h2o_http2_casper_t *casper)
{
    free(casper->keys.entries);
    free(casper->cookie_cache.base);
    free(casper);
}
