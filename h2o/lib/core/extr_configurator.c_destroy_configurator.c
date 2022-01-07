
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_7__ {TYPE_1__ commands; int (* dispose ) (TYPE_2__*) ;} ;
typedef TYPE_2__ h2o_configurator_t ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void destroy_configurator(h2o_configurator_t *configurator)
{
    if (configurator->dispose != ((void*)0))
        configurator->dispose(configurator);
    free(configurator->commands.entries);
    free(configurator);
}
