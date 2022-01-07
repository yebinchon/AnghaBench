
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ size; TYPE_3__** entries; } ;
struct TYPE_10__ {TYPE_5__ _loggers; TYPE_1__* global; } ;
typedef TYPE_2__ h2o_pathconf_t ;
struct TYPE_11__ {scalar_t__ _config_slot; } ;
typedef TYPE_3__ h2o_logger_t ;
struct TYPE_9__ {int _num_config_slots; } ;


 TYPE_3__* h2o_mem_alloc (size_t) ;
 int h2o_vector_reserve (int *,TYPE_5__*,scalar_t__) ;
 int memset (TYPE_3__*,int ,size_t) ;

h2o_logger_t *h2o_create_logger(h2o_pathconf_t *conf, size_t sz)
{
    h2o_logger_t *logger = h2o_mem_alloc(sz);

    memset(logger, 0, sz);
    logger->_config_slot = conf->global->_num_config_slots++;

    h2o_vector_reserve(((void*)0), &conf->_loggers, conf->_loggers.size + 1);
    conf->_loggers.entries[conf->_loggers.size++] = logger;

    return logger;
}
