
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_NOTIMP_ERROR ;
 int mrb_free (int *,char*) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_get_args (int *,char*,char**) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (char*,int) ;
 scalar_t__ mrb_malloc (int *,size_t) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ mrb_realloc (int *,char*,size_t) ;
 int mrb_str_new (int *,char*,int) ;
 int mrb_sys_fail (int *,char*) ;
 char* mrb_utf8_from_locale (char*,int) ;
 int readlink (char*,char*,size_t) ;

__attribute__((used)) static mrb_value
mrb_file_s_readlink(mrb_state *mrb, mrb_value klass) {




  char *path, *buf, *tmp;
  size_t bufsize = 100;
  ssize_t rc;
  mrb_value ret;
  int ai = mrb_gc_arena_save(mrb);

  mrb_get_args(mrb, "z", &path);
  tmp = mrb_locale_from_utf8(path, -1);

  buf = (char *)mrb_malloc(mrb, bufsize);
  while ((rc = readlink(tmp, buf, bufsize)) == (ssize_t)bufsize && rc != -1) {
    bufsize *= 2;
    buf = (char *)mrb_realloc(mrb, buf, bufsize);
  }
  mrb_locale_free(tmp);
  if (rc == -1) {
    mrb_free(mrb, buf);
    mrb_sys_fail(mrb, path);
  }
  tmp = mrb_utf8_from_locale(buf, -1);
  ret = mrb_str_new(mrb, tmp, rc);
  mrb_locale_free(tmp);
  mrb_free(mrb, buf);

  mrb_gc_arena_restore(mrb, ai);
  return ret;

}
