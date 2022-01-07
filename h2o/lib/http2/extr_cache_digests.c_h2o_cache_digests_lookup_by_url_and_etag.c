
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int complete; int url_and_etag; } ;
struct TYPE_5__ {TYPE_1__ fresh; } ;
typedef TYPE_2__ h2o_cache_digests_t ;
typedef int h2o_cache_digests_state_t ;


 int lookup (int *,char const*,size_t,char const*,size_t,int,int ) ;

h2o_cache_digests_state_t h2o_cache_digests_lookup_by_url_and_etag(h2o_cache_digests_t *digests, const char *url, size_t url_len,
                                                                   const char *etag, size_t etag_len)
{
    return lookup(&digests->fresh.url_and_etag, url, url_len, etag, etag_len, 1, digests->fresh.complete);
}
