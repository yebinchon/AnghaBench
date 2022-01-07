
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct mrb_io {scalar_t__ fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 int LSTAT (char*,struct stat*) ;
 int fstat (scalar_t__,struct stat*) ;
 int mrb_class_get (int *,char*) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 scalar_t__ mrb_get_datatype (int *,int ,int *) ;
 int mrb_io_type ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_obj_value (int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_to_cstr (int *,int ) ;
 scalar_t__ mrb_test (int ) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static int
mrb_stat0(mrb_state *mrb, mrb_value obj, struct stat *st, int do_lstat)
{
  mrb_value tmp;
  mrb_value io_klass, str_klass;

  io_klass = mrb_obj_value(mrb_class_get(mrb, "IO"));
  str_klass = mrb_obj_value(mrb_class_get(mrb, "String"));

  tmp = mrb_funcall(mrb, obj, "is_a?", 1, io_klass);
  if (mrb_test(tmp)) {
    struct mrb_io *fptr;
    fptr = (struct mrb_io *)mrb_get_datatype(mrb, obj, &mrb_io_type);

    if (fptr && fptr->fd >= 0) {
      return fstat(fptr->fd, st);
    }

    mrb_raise(mrb, E_IO_ERROR, "closed stream");
    return -1;
  }

  tmp = mrb_funcall(mrb, obj, "is_a?", 1, str_klass);
  if (mrb_test(tmp)) {
    char *path = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, obj), -1);
    int ret;
    if (do_lstat) {
      ret = LSTAT(path, st);
    } else {
      ret = stat(path, st);
    }
    mrb_locale_free(path);
    return ret;
  }

  return -1;
}
