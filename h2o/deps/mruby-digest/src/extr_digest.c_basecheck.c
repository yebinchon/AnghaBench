
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ DATA_PTR (int ) ;
 int E_NOTIMP_ERROR ;
 int E_RUNTIME_ERROR ;
 int TYPESYM ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_intern_lit (int *,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 struct RClass* mrb_obj_class (int *,int ) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static void
basecheck(mrb_state *mrb, mrb_value self, struct mrb_md **mdp)
{
  struct RClass *c;
  struct mrb_md *md;
  mrb_value t;

  c = mrb_obj_class(mrb, self);
  t = mrb_const_get(mrb, mrb_obj_value(c), mrb_intern_lit(mrb, TYPESYM));
  if (mrb_nil_p(t)) {
    mrb_raise(mrb, E_NOTIMP_ERROR, "Digest::Base is an abstract class");
  }
  md = (struct mrb_md *)DATA_PTR(self);
  if (!md) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "no md found (BUG?)");
  }
  if (mdp) *mdp = md;
}
