
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int CHMOD (char*,size_t) ;
 int mrb_fixnum_value (size_t) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_get_args (int *,char*,size_t*,int **,size_t*) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (char const*,int) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char const*) ;

__attribute__((used)) static mrb_value
mrb_file_s_chmod(mrb_state *mrb, mrb_value klass) {
  mrb_int mode;
  mrb_int argc, i;
  mrb_value *filenames;
  int ai = mrb_gc_arena_save(mrb);

  mrb_get_args(mrb, "i*", &mode, &filenames, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path = mrb_str_to_cstr(mrb, filenames[i]);
    char *path = mrb_locale_from_utf8(utf8_path, -1);
    if (CHMOD(path, mode) == -1) {
      mrb_locale_free(path);
      mrb_sys_fail(mrb, utf8_path);
    }
    mrb_locale_free(path);
  }

  mrb_gc_arena_restore(mrb, ai);
  return mrb_fixnum_value(argc);
}
