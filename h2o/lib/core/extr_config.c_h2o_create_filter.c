
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int size; TYPE_3__** entries; } ;
struct TYPE_12__ {TYPE_7__ _filters; TYPE_1__* global; } ;
typedef TYPE_2__ h2o_pathconf_t ;
struct TYPE_13__ {scalar_t__ _config_slot; } ;
typedef TYPE_3__ h2o_filter_t ;
struct TYPE_11__ {int _num_config_slots; } ;


 TYPE_3__* h2o_mem_alloc (size_t) ;
 int h2o_vector_reserve (int *,TYPE_7__*,int) ;
 int memmove (TYPE_3__**,TYPE_3__**,int) ;
 int memset (TYPE_3__*,int ,size_t) ;

h2o_filter_t *h2o_create_filter(h2o_pathconf_t *conf, size_t sz)
{
    h2o_filter_t *filter = h2o_mem_alloc(sz);

    memset(filter, 0, sz);
    filter->_config_slot = conf->global->_num_config_slots++;

    h2o_vector_reserve(((void*)0), &conf->_filters, conf->_filters.size + 1);
    memmove(conf->_filters.entries + 1, conf->_filters.entries, conf->_filters.size * sizeof(conf->_filters.entries[0]));
    conf->_filters.entries[0] = filter;
    ++conf->_filters.size;

    return filter;
}
