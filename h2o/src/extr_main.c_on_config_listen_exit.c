
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yoml_t ;
struct listener_config_t {int * hosts; } ;
typedef int h2o_configurator_t ;
struct TYPE_6__ {int * pathconf; int * hostconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_5__ {int * hosts; } ;
struct TYPE_7__ {size_t num_listeners; TYPE_1__ globalconf; struct listener_config_t** listeners; } ;


 TYPE_4__ conf ;
 int h2o_configurator_errprintf (int *,int *,char*) ;

__attribute__((used)) static int on_config_listen_exit(h2o_configurator_t *_configurator, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (ctx->pathconf != ((void*)0)) {

    } else if (ctx->hostconf == ((void*)0)) {

        size_t i;
        for (i = 0; i != conf.num_listeners; ++i) {
            struct listener_config_t *listener = conf.listeners[i];
            if (listener->hosts == ((void*)0))
                listener->hosts = conf.globalconf.hosts;
        }
    } else if (ctx->pathconf == ((void*)0)) {

        if (conf.num_listeners == 0) {
            h2o_configurator_errprintf(
                ((void*)0), node,
                "mandatory configuration directive `listen` does not exist, neither at global level or at this host level");
            return -1;
        }
    }

    return 0;
}
