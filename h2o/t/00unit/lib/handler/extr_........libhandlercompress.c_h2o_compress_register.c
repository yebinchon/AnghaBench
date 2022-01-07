
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on_setup_ostream; } ;
struct st_compress_filter_t {int args; TYPE_1__ super; } ;
typedef int h2o_pathconf_t ;
typedef int h2o_compress_args_t ;


 scalar_t__ h2o_create_filter (int *,int) ;
 int on_setup_ostream ;

void h2o_compress_register(h2o_pathconf_t *pathconf, h2o_compress_args_t *args)
{
    struct st_compress_filter_t *self = (void *)h2o_create_filter(pathconf, sizeof(*self));
    self->super.on_setup_ostream = on_setup_ostream;
    self->args = *args;
}
