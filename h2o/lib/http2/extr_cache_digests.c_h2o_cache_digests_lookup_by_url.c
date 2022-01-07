
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int complete; int url_only; } ;
struct TYPE_5__ {TYPE_1__ fresh; } ;
typedef TYPE_2__ h2o_cache_digests_t ;
typedef int h2o_cache_digests_state_t ;


 int lookup (int *,char const*,size_t,char*,int ,int,int ) ;

h2o_cache_digests_state_t h2o_cache_digests_lookup_by_url(h2o_cache_digests_t *digests, const char *url, size_t url_len)
{
    return lookup(&digests->fresh.url_only, url, url_len, "", 0, 1, digests->fresh.complete);
}
