
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int Data_Wrap_Struct (int *,struct RClass*,int *,struct stat*) ;
 int LSTAT (char*,struct stat*) ;
 int MRB_TT_STRING ;
 int mrb_check_convert_type (int *,int ,int ,char*,char*) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_convert_type (int *,int ,int ,char*,char*) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_value (int ) ;
 struct stat* mrb_stat_alloc (int *) ;
 int mrb_stat_type ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
file_s_lstat(mrb_state *mrb, mrb_value klass)
{
  struct RClass *file_class;
  struct RClass *stat_class;
  struct stat st, *ptr;
  mrb_value fname, tmp;
  char *path;

  mrb_get_args(mrb, "o", &fname);

  tmp = mrb_check_convert_type(mrb, fname, MRB_TT_STRING, "String", "to_path");
  if (mrb_nil_p(tmp)) {
    tmp = mrb_convert_type(mrb, fname, MRB_TT_STRING, "String", "to_str");
  }
  path = mrb_str_to_cstr(mrb, tmp);
  if (LSTAT(path, &st) == -1) {
    mrb_sys_fail(mrb, path);
  }

  file_class = mrb_class_ptr(klass);
  stat_class = mrb_class_get_under(mrb, file_class, "Stat");
  ptr = mrb_stat_alloc(mrb);
  *ptr = st;

  return mrb_obj_value(Data_Wrap_Struct(mrb, stat_class, &mrb_stat_type, ptr));
}
