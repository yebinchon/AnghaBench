
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; } ;
typedef TYPE_1__ git_sortedcache ;


 size_t git_vector_length (int *) ;

size_t git_sortedcache_entrycount(const git_sortedcache *sc)
{
 return git_vector_length(&sc->items);
}
