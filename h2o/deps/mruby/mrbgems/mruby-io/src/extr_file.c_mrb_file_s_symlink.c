
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_NOTIMP_ERROR ;
 int mrb_fixnum_value (int ) ;
 int mrb_format (int *,char*,int ,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_locale_free (char const*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,int ) ;
 int symlink (char const*,char const*) ;

__attribute__((used)) static mrb_value
mrb_file_s_symlink(mrb_state *mrb, mrb_value klass)
{



  mrb_value from, to;
  const char *src, *dst;
  int ai = mrb_gc_arena_save(mrb);

  mrb_get_args(mrb, "SS", &from, &to);
  src = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, from), -1);
  dst = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, to), -1);

  if (symlink(src, dst) == -1) {
    mrb_locale_free(src);
    mrb_locale_free(dst);
    mrb_sys_fail(mrb, mrb_str_to_cstr(mrb, mrb_format(mrb, "(%S, %S)", from, to)));
  }
  mrb_locale_free(src);
  mrb_locale_free(dst);
  mrb_gc_arena_restore(mrb, ai);

  return mrb_fixnum_value(0);
}
