
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_access; int dispose; } ;
struct st_h2o_access_logger_t {TYPE_1__ super; int * fh; } ;
typedef int h2o_pathconf_t ;
typedef TYPE_1__ h2o_logger_t ;
typedef int h2o_access_log_filehandle_t ;


 int dispose ;
 scalar_t__ h2o_create_logger (int *,int) ;
 int h2o_mem_addref_shared (int *) ;
 int log_access ;

h2o_logger_t *h2o_access_log_register(h2o_pathconf_t *pathconf, h2o_access_log_filehandle_t *fh)
{
    struct st_h2o_access_logger_t *self = (void *)h2o_create_logger(pathconf, sizeof(*self));

    self->super.dispose = dispose;
    self->super.log_access = log_access;
    self->fh = fh;
    h2o_mem_addref_shared(fh);

    return &self->super;
}
