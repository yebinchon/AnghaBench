
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int url_and_etag; int url_only; } ;
struct TYPE_5__ {TYPE_1__ fresh; } ;
typedef TYPE_2__ h2o_cache_digests_t ;


 int dispose_frame_vector (int *) ;

__attribute__((used)) static void dispose_digests(h2o_cache_digests_t *digests)
{
    dispose_frame_vector(&digests->fresh.url_only);
    dispose_frame_vector(&digests->fresh.url_and_etag);
}
