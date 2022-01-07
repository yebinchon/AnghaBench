
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_digests_t ;


 int dispose_digests (int *) ;
 int free (int *) ;

void h2o_cache_digests_destroy(h2o_cache_digests_t *digests)
{
    dispose_digests(digests);
    free(digests);
}
