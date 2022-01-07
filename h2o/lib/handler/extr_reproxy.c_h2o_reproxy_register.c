
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_pathconf_t ;
struct TYPE_3__ {int on_setup_ostream; } ;
typedef TYPE_1__ h2o_filter_t ;


 TYPE_1__* h2o_create_filter (int *,int) ;
 int on_setup_ostream ;

void h2o_reproxy_register(h2o_pathconf_t *pathconf)
{
    h2o_filter_t *self = h2o_create_filter(pathconf, sizeof(*self));
    self->on_setup_ostream = on_setup_ostream;
}
