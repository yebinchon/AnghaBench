
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 int RANGE_EXCL (struct RRange*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_obj_class (int *,int ) ;
 scalar_t__ mrb_obj_equal (int *,int ,int ) ;
 int mrb_obj_is_instance_of (int *,int ,int ) ;
 int mrb_raise (int *,int ,char*) ;
 struct RRange* mrb_range_ptr (int *,int ) ;
 int mrb_range_raw_ptr (int ) ;
 int range_ptr_replace (int *,int ,int ,int ,int ) ;

__attribute__((used)) static mrb_value
range_initialize_copy(mrb_state *mrb, mrb_value copy)
{
  mrb_value src;
  struct RRange *r;

  mrb_get_args(mrb, "o", &src);

  if (mrb_obj_equal(mrb, copy, src)) return copy;
  if (!mrb_obj_is_instance_of(mrb, src, mrb_obj_class(mrb, copy))) {
    mrb_raise(mrb, E_TYPE_ERROR, "wrong argument class");
  }

  r = mrb_range_ptr(mrb, src);
  range_ptr_replace(mrb, mrb_range_raw_ptr(copy), RANGE_BEG(r), RANGE_END(r), RANGE_EXCL(r));

  return copy;
}
