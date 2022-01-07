
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct RRange {int dummy; } ;
typedef int mrb_value ;
struct TYPE_8__ {int range_class; } ;
typedef TYPE_1__ mrb_state ;


 scalar_t__ MRB_TT_RANGE ;
 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 scalar_t__ RANGE_EXCL (struct RRange*) ;
 int mrb_eql (TYPE_1__*,int ,int ) ;
 int mrb_false_value () ;
 int mrb_get_args (TYPE_1__*,char*,int *) ;
 scalar_t__ mrb_obj_equal (TYPE_1__*,int ,int ) ;
 int mrb_obj_is_kind_of (TYPE_1__*,int ,int ) ;
 struct RRange* mrb_range_ptr (TYPE_1__*,int ) ;
 int mrb_true_value () ;
 scalar_t__ mrb_type (int ) ;

__attribute__((used)) static mrb_value
range_eql(mrb_state *mrb, mrb_value range)
{
  mrb_value obj;
  struct RRange *r, *o;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_obj_equal(mrb, range, obj)) return mrb_true_value();
  if (!mrb_obj_is_kind_of(mrb, obj, mrb->range_class)) return mrb_false_value();
  if (mrb_type(obj) != MRB_TT_RANGE) return mrb_false_value();

  r = mrb_range_ptr(mrb, range);
  o = mrb_range_ptr(mrb, obj);
  if (!mrb_eql(mrb, RANGE_BEG(r), RANGE_BEG(o)) ||
      !mrb_eql(mrb, RANGE_END(r), RANGE_END(o)) ||
      (RANGE_EXCL(r) != RANGE_EXCL(o))) {
    return mrb_false_value();
  }
  return mrb_true_value();
}
