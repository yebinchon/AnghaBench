
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_sendfile_generator_t {int dummy; } ;


 int close_file (struct st_h2o_sendfile_generator_t*) ;

__attribute__((used)) static void on_generator_dispose(void *_self)
{
    struct st_h2o_sendfile_generator_t *self = _self;
    close_file(self);
}
