
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_status_handler_t ;
struct TYPE_5__ {size_t size; int ** entries; } ;
struct TYPE_4__ {TYPE_2__ statuses; } ;
typedef TYPE_1__ h2o_globalconf_t ;


 int h2o_vector_reserve (int *,TYPE_2__*,int) ;

void h2o_config_register_status_handler(h2o_globalconf_t *config, h2o_status_handler_t *status_handler)
{

    size_t i;
    for (i = 0; i != config->statuses.size; ++i)
        if (config->statuses.entries[i] == status_handler)
            return;

    h2o_vector_reserve(((void*)0), &config->statuses, config->statuses.size + 1);
    config->statuses.entries[config->statuses.size++] = status_handler;
}
