
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int generator; } ;
struct TYPE_4__ {TYPE_1__ refs; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;


 int mrb_nil_value () ;

__attribute__((used)) static void on_gc_dispose_generator(mrb_state *mrb, void *_generator)
{
    h2o_mruby_generator_t *generator = _generator;
    if (generator == ((void*)0))
        return;
    generator->refs.generator = mrb_nil_value();
}
