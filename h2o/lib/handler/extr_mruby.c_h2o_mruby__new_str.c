
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_6__ {int * exc; } ;
typedef TYPE_1__ mrb_state ;


 int h2o_mruby__abort_exc (TYPE_1__*,char*,char const*,int) ;
 int mrb_str_new (TYPE_1__*,char const*,size_t) ;
 int mrb_str_new_static (TYPE_1__*,char const*,size_t) ;

mrb_value h2o_mruby__new_str(mrb_state *mrb, const char *s, size_t len, int is_static, const char *file, int line)
{
    if (mrb->exc != ((void*)0))
        h2o_mruby__abort_exc(mrb, "h2o_mruby_new_str:precondition failure", file, line);
    mrb_value ret = is_static ? mrb_str_new_static(mrb, s, len) : mrb_str_new(mrb, s, len);
    if (mrb->exc != ((void*)0))
        h2o_mruby__abort_exc(mrb, "h2o_mruby_new_str:failed to create string", file, line);
    return ret;
}
