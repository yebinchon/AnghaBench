
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int Data_Wrap_Struct (int *,struct RClass*,int *,struct stat*) ;
 int E_NOTIMP_ERROR ;
 int fstat (int ,struct stat*) ;
 struct RClass* mrb_class_get (int *,char*) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 int mrb_fixnum (int ) ;
 int mrb_funcall (int *,int ,char*,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_value (int ) ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ mrb_respond_to (int *,int ,int ) ;
 struct stat* mrb_stat_alloc (int *) ;
 int mrb_stat_type ;
 int mrb_sys_fail (int *,char*) ;

__attribute__((used)) static mrb_value
io_stat(mrb_state *mrb, mrb_value self)
{
  struct RClass *file_class;
  struct RClass *stat_class;
  struct stat st, *ptr;
  mrb_value fileno;

  if (mrb_respond_to(mrb, self, mrb_intern_lit(mrb, "fileno"))) {
    fileno = mrb_funcall(mrb, self, "fileno", 0);
  }
  else {
    mrb_raise(mrb, E_NOTIMP_ERROR, "`fileno' is not implemented");
  }

  if (fstat(mrb_fixnum(fileno), &st) == -1) {
    mrb_sys_fail(mrb, "fstat");
  }

  file_class = mrb_class_get(mrb, "File");
  stat_class = mrb_class_get_under(mrb, file_class, "Stat");
  ptr = mrb_stat_alloc(mrb);
  *ptr = st;

  return mrb_obj_value(Data_Wrap_Struct(mrb, stat_class, &mrb_stat_type, ptr));
}
