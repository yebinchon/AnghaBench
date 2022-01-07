
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_7__ {TYPE_2__* generator; } ;
typedef TYPE_3__ h2o_mruby_error_stream_t ;
struct TYPE_5__ {int error_stream; } ;
struct TYPE_6__ {TYPE_1__ refs; int * error_stream; } ;


 int free (TYPE_3__*) ;
 int mrb_nil_value () ;

__attribute__((used)) static void on_gc_dispose_error_stream(mrb_state *mrb, void *_error_stream)
{
    h2o_mruby_error_stream_t *error_stream = _error_stream;
    if (error_stream == ((void*)0))
        return;
    if (error_stream->generator != ((void*)0)) {
        error_stream->generator->error_stream = ((void*)0);
        error_stream->generator->refs.error_stream = mrb_nil_value();
    }
    free(error_stream);
}
