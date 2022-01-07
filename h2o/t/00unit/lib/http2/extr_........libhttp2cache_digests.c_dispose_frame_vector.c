
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_3__* entries; } ;
typedef TYPE_2__ h2o_cache_digests_frame_vector_t ;
struct TYPE_5__ {TYPE_3__* entries; } ;
struct TYPE_7__ {TYPE_1__ keys; } ;


 int free (TYPE_3__*) ;

__attribute__((used)) static void dispose_frame_vector(h2o_cache_digests_frame_vector_t *v)
{
    size_t i;
    for (i = 0; i != v->size; ++i)
        free(v->entries[i].keys.entries);
    free(v->entries);
}
