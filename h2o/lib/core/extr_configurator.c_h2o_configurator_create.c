
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int configurators; } ;
typedef TYPE_1__ h2o_globalconf_t ;
struct TYPE_8__ {int _link; } ;
typedef TYPE_2__ h2o_configurator_t ;


 int assert (int) ;
 int h2o_linklist_insert (int *,int *) ;
 TYPE_2__* h2o_mem_alloc (size_t) ;
 int memset (TYPE_2__*,int ,size_t) ;

h2o_configurator_t *h2o_configurator_create(h2o_globalconf_t *conf, size_t sz)
{
    h2o_configurator_t *c;

    assert(sz >= sizeof(*c));

    c = h2o_mem_alloc(sz);
    memset(c, 0, sz);
    h2o_linklist_insert(&conf->configurators, &c->_link);

    return c;
}
