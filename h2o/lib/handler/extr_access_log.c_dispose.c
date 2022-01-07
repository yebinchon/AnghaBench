
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_access_logger_t {int fh; } ;
typedef int h2o_logger_t ;


 int h2o_mem_release_shared (int ) ;

__attribute__((used)) static void dispose(h2o_logger_t *_self)
{
    struct st_h2o_access_logger_t *self = (void *)_self;

    h2o_mem_release_shared(self->fh);
}
