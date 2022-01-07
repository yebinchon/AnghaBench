
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp_generator_t {int sending; int * last_content_before_send; } ;


 int do_close (struct rp_generator_t*) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_doublebuffer_dispose (int *) ;

__attribute__((used)) static void on_generator_dispose(void *_self)
{
    struct rp_generator_t *self = _self;
    do_close(self);

    if (self->last_content_before_send != ((void*)0)) {
        h2o_buffer_dispose(&self->last_content_before_send);
    }
    h2o_doublebuffer_dispose(&self->sending);
}
