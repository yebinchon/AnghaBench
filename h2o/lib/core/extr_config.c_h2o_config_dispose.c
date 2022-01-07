
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h2o_hostconf_t ;
struct TYPE_5__ {int global_socketpool; } ;
struct TYPE_6__ {int mimemap; TYPE_1__ proxy; int ** hosts; } ;
typedef TYPE_2__ h2o_globalconf_t ;


 int destroy_hostconf (int *) ;
 int free (int **) ;
 int h2o_configurator__dispose_configurators (TYPE_2__*) ;
 int h2o_mem_release_shared (int ) ;
 int h2o_socketpool_dispose (int *) ;

void h2o_config_dispose(h2o_globalconf_t *config)
{
    size_t i;

    for (i = 0; config->hosts[i] != ((void*)0); ++i) {
        h2o_hostconf_t *hostconf = config->hosts[i];
        destroy_hostconf(hostconf);
    }
    free(config->hosts);

    h2o_socketpool_dispose(&config->proxy.global_socketpool);
    h2o_mem_release_shared(config->mimemap);
    h2o_configurator__dispose_configurators(config);
}
