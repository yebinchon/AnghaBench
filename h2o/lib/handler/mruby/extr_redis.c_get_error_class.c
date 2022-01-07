
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_value ;
struct TYPE_5__ {TYPE_2__* ud; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_6__ {int constants; } ;
typedef TYPE_2__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_H2O_MODULE ;
 int mrb_ary_entry (int ,int ) ;
 struct RClass* mrb_class_get_under (TYPE_1__*,struct RClass*,char const*) ;
 scalar_t__ mrb_obj_ptr (int ) ;

__attribute__((used)) static struct RClass *get_error_class(mrb_state *mrb, const char *name)
{
    h2o_mruby_shared_context_t *shared = mrb->ud;
    mrb_value h2o = mrb_ary_entry(shared->constants, H2O_MRUBY_H2O_MODULE);
    struct RClass *redis_klass = mrb_class_get_under(mrb, (struct RClass *)mrb_obj_ptr(h2o), "Redis");
    struct RClass *error_klass = mrb_class_get_under(mrb, redis_klass, name);
    return error_klass;
}
