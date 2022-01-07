
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_4__* entries; } ;
struct TYPE_5__ {size_t size; TYPE_4__* entries; } ;
struct TYPE_7__ {TYPE_2__ sets; TYPE_1__ unsets; int * parent; } ;
typedef TYPE_3__ h2o_envconf_t ;
struct TYPE_8__ {int * base; } ;


 int free (TYPE_4__*) ;
 int h2o_mem_release_shared (int *) ;

__attribute__((used)) static void on_dispose_envconf(void *_envconf)
{
    h2o_envconf_t *envconf = _envconf;
    size_t i;

    if (envconf->parent != ((void*)0))
        h2o_mem_release_shared(envconf->parent);

    for (i = 0; i != envconf->unsets.size; ++i)
        h2o_mem_release_shared(envconf->unsets.entries[i].base);
    free(envconf->unsets.entries);
    for (i = 0; i != envconf->sets.size; ++i)
        h2o_mem_release_shared(envconf->sets.entries[i].base);
    free(envconf->sets.entries);
}
