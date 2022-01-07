
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mruby_configurator_t {int * mrb; } ;
typedef int mrb_state ;


 int H2O_MRUBY_MODULE_NAME ;
 int h2o_fatal (char*,int ) ;
 int h2o_mruby_setup_globals (int *) ;
 int * mrb_open () ;

__attribute__((used)) static mrb_state *get_mrb(struct mruby_configurator_t *self)
{
    if (self->mrb == ((void*)0)) {
        self->mrb = mrb_open();
        if (self->mrb == ((void*)0)) {
            h2o_fatal("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
        }
        h2o_mruby_setup_globals(self->mrb);
    }
    return self->mrb;
}
