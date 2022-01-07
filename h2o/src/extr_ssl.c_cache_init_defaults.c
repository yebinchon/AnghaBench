
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int setup; } ;
struct TYPE_4__ {TYPE_1__ cache; } ;


 TYPE_2__ conf ;
 int setup_cache_internal ;

__attribute__((used)) static void cache_init_defaults(void)
{
    conf.cache.setup = setup_cache_internal;
}
