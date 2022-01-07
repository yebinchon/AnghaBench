
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on_setup_ostream; } ;
struct st_server_timing_filter_t {int enforce; TYPE_1__ super; } ;
typedef int h2o_pathconf_t ;


 scalar_t__ h2o_create_filter (int *,int) ;
 int on_setup_ostream ;

void h2o_server_timing_register(h2o_pathconf_t *pathconf, int enforce)
{
    struct st_server_timing_filter_t *self = (struct st_server_timing_filter_t *)h2o_create_filter(pathconf, sizeof(*self));
    self->super.on_setup_ostream = on_setup_ostream;
    self->enforce = enforce;
}
