
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mrb_value ;
typedef int mrb_state ;


 int * DATA_TYPE (int const) ;
 scalar_t__ MRB_TT_DATA ;
 int mrb_assert (int) ;
 int mrb_class_get (int *,char*) ;
 int mrb_data_object_alloc (int *,int ,int ,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_set (int *,int const,int ,int const) ;
 int const mrb_obj_value (int ) ;
 int mrb_onig_regexp_type ;
 int mrb_onig_region_type ;
 int const mrb_str_dup (int *,int const) ;
 int mrb_string_p (int const) ;
 scalar_t__ mrb_type (int const) ;
 int onig_region_new () ;

__attribute__((used)) static mrb_value
create_onig_region(mrb_state* mrb, mrb_value const str, mrb_value rex) {
  mrb_assert(mrb_string_p(str));
  mrb_assert(mrb_type(rex) == MRB_TT_DATA && DATA_TYPE(rex) == &mrb_onig_regexp_type);
  mrb_value const c = mrb_obj_value(mrb_data_object_alloc(
      mrb, mrb_class_get(mrb, "OnigMatchData"), onig_region_new(), &mrb_onig_region_type));
  mrb_iv_set(mrb, c, mrb_intern_lit(mrb, "string"), mrb_str_dup(mrb, str));
  mrb_iv_set(mrb, c, mrb_intern_lit(mrb, "regexp"), rex);
  return c;
}
