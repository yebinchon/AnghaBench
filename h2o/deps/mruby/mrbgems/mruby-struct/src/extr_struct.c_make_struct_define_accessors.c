
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef int mrb_method_t ;
typedef size_t mrb_int ;


 int MRB_METHOD_FROM_PROC (int ,struct RProc*) ;
 size_t RARRAY_LEN (int ) ;
 int * RARRAY_PTR (int ) ;
 scalar_t__ is_const_id (int *,char const*) ;
 scalar_t__ is_local_id (int *,char const*) ;
 int mrb_define_method_raw (int *,struct RClass*,int ,int ) ;
 int mrb_fixnum_value (size_t) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_id_attrset (int *,int ) ;
 struct RProc* mrb_proc_new_cfunc_with_env (int *,int ,int,int *) ;
 int mrb_struct_ref ;
 int mrb_struct_set_m ;
 char* mrb_sym2name_len (int *,int ,int *) ;
 int mrb_symbol (int const) ;

__attribute__((used)) static void
make_struct_define_accessors(mrb_state *mrb, mrb_value members, struct RClass *c)
{
  const mrb_value *ptr_members = RARRAY_PTR(members);
  mrb_int i;
  mrb_int len = RARRAY_LEN(members);
  int ai = mrb_gc_arena_save(mrb);

  for (i=0; i<len; i++) {
    mrb_sym id = mrb_symbol(ptr_members[i]);
    const char *name = mrb_sym2name_len(mrb, id, ((void*)0));

    if (is_local_id(mrb, name) || is_const_id(mrb, name)) {
      mrb_method_t m;
      mrb_value at = mrb_fixnum_value(i);
      struct RProc *aref = mrb_proc_new_cfunc_with_env(mrb, mrb_struct_ref, 1, &at);
      struct RProc *aset = mrb_proc_new_cfunc_with_env(mrb, mrb_struct_set_m, 1, &at);
      MRB_METHOD_FROM_PROC(m, aref);
      mrb_define_method_raw(mrb, c, id, m);
      MRB_METHOD_FROM_PROC(m, aset);
      mrb_define_method_raw(mrb, c, mrb_id_attrset(mrb, id), m);
      mrb_gc_arena_restore(mrb, ai);
    }
  }
}
