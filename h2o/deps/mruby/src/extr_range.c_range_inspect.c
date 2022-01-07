
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 scalar_t__ RANGE_EXCL (struct RRange*) ;
 int mrb_inspect (int *,int ) ;
 struct RRange* mrb_range_ptr (int *,int ) ;
 int mrb_str_cat (int *,int ,char*,int) ;
 int mrb_str_cat_str (int *,int ,int ) ;
 int mrb_str_dup (int *,int ) ;

__attribute__((used)) static mrb_value
range_inspect(mrb_state *mrb, mrb_value range)
{
  mrb_value str, str2;
  struct RRange *r = mrb_range_ptr(mrb, range);

  str = mrb_inspect(mrb, RANGE_BEG(r));
  str2 = mrb_inspect(mrb, RANGE_END(r));
  str = mrb_str_dup(mrb, str);
  mrb_str_cat(mrb, str, "...", RANGE_EXCL(r) ? 3 : 2);
  mrb_str_cat_str(mrb, str, str2);

  return str;
}
