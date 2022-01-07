
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ duration; } ;
typedef TYPE_1__ h2o_cache_t ;
struct TYPE_6__ {scalar_t__ at; } ;
typedef TYPE_2__ h2o_cache_ref_t ;



__attribute__((used)) static int64_t get_timeleft(h2o_cache_t *cache, h2o_cache_ref_t *ref, uint64_t now)
{
    return (int64_t)(ref->at + cache->duration) - now;
}
