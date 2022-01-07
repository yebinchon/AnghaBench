
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int OnigUChar ;
typedef int OnigRegion ;
typedef int OnigRegex ;


 scalar_t__ DATA_PTR (int const) ;
 int * DATA_TYPE (int const) ;
 int E_INDEX_ERROR ;
 int FALSE ;
 int mrb_assert (int) ;
 int mrb_fixnum (int const) ;
 scalar_t__ mrb_fixnum_p (int const) ;
 int mrb_intern_lit (int *,char*) ;
 int const mrb_iv_get (int *,int const,int ) ;
 int mrb_nil_p (int const) ;
 int mrb_onig_regexp_type ;
 int mrb_onig_region_type ;
 int mrb_raisef (int *,int ,char*,int const) ;
 scalar_t__ mrb_string_p (int const) ;
 char* mrb_string_value_ptr (int *,int const) ;
 char* mrb_sym2name_len (int *,int ,int*) ;
 int mrb_symbol (int const) ;
 scalar_t__ mrb_symbol_p (int const) ;
 int onig_name_to_backref_number (int ,int const*,int const*,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static mrb_int
match_data_actual_index(mrb_state* mrb, mrb_value self, mrb_value idx_value) {
  if(mrb_fixnum_p(idx_value)) { return mrb_fixnum(idx_value); }

  char const* name = ((void*)0);
  char const* name_end = ((void*)0);
  if(mrb_symbol_p(idx_value)) {
    mrb_int sym_len;
    name = mrb_sym2name_len(mrb, mrb_symbol(idx_value), &sym_len);
    name_end = name + sym_len;
  } else if(mrb_string_p(idx_value)) {
    name = mrb_string_value_ptr(mrb, idx_value);
    name_end = name + strlen(name);
  } else { mrb_assert(FALSE); }
  mrb_assert(name && name_end);

  mrb_value const regexp = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "regexp"));
  mrb_assert(!mrb_nil_p(regexp));
  mrb_assert(DATA_TYPE(regexp) == &mrb_onig_regexp_type);
  mrb_assert(DATA_TYPE(self) == &mrb_onig_region_type);
  int const idx = onig_name_to_backref_number(
      (OnigRegex)DATA_PTR(regexp), (OnigUChar const*)name, (OnigUChar const*)name_end,
      (OnigRegion*)DATA_PTR(self));
  if (idx < 0) {
    mrb_raisef(mrb, E_INDEX_ERROR, "undefined group name reference: %S", idx_value);
  }
  return idx;
}
