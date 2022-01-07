
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exc; } ;
typedef TYPE_1__ mrb_state ;


 int RSTRING_PTR (int ) ;
 int h2o__fatal (char const*,int,char*,char const*,int ) ;
 int mrb_inspect (TYPE_1__*,int ) ;
 int mrb_obj_value (int ) ;

void h2o_mruby__abort_exc(mrb_state *mrb, const char *mess, const char *file, int line)
{
    h2o__fatal(file, line, "%s:%s\n", mess, RSTRING_PTR(mrb_inspect(mrb, mrb_obj_value(mrb->exc))));
}
