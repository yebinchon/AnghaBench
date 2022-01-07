
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef int mrb_bool ;


 int FALSE ;
 size_t RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 int TRUE ;
 scalar_t__ mrb_array_p (int ) ;
 int mrb_false_value () ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 scalar_t__ mrb_intern_cstr (int *,char const*) ;
 scalar_t__ mrb_symbol (int ) ;

__attribute__((used)) static mrb_bool
mrb_method_defined(mrb_state* mrb, mrb_value value, const char* name) {
  int ai = mrb_gc_arena_save(mrb);
  mrb_sym mid = mrb_intern_cstr(mrb, name);
  mrb_value methods = mrb_funcall(mrb, value, "public_methods", 1, mrb_false_value());
  mrb_bool included = FALSE;
  if (mrb_array_p(methods)) {
    mrb_int i;
    for (i = 0; i < RARRAY_LEN(methods); ++i) {
      if (mid == mrb_symbol(RARRAY_PTR(methods)[i])) {
        included = TRUE;
        break;
      }
    }
  }
  mrb_gc_arena_restore(mrb, ai);
  return included;
}
