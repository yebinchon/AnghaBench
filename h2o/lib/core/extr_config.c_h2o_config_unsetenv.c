
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_3__* entries; } ;
struct TYPE_5__ {TYPE_2__ unsets; } ;
typedef TYPE_1__ h2o_envconf_t ;
struct TYPE_7__ {int len; int base; } ;


 scalar_t__ h2o_memis (int ,int ,char const*,size_t) ;
 TYPE_3__ h2o_strdup_shared (int *,char const*,size_t) ;
 int h2o_vector_reserve (int *,TYPE_2__*,int) ;
 size_t strlen (char const*) ;

void h2o_config_unsetenv(h2o_envconf_t *envconf, const char *name)
{
    size_t i, name_len = strlen(name);


    for (i = 0; i != envconf->unsets.size; ++i)
        if (h2o_memis(envconf->unsets.entries[i].base, envconf->unsets.entries[i].len, name, name_len))
            return;

    h2o_vector_reserve(((void*)0), &envconf->unsets, envconf->unsets.size + 1);
    envconf->unsets.entries[envconf->unsets.size++] = h2o_strdup_shared(((void*)0), name, name_len);
}
