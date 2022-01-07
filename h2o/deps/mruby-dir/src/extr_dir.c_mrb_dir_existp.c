
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ S_ISDIR (int ) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_true_value () ;
 scalar_t__ stat (char*,struct stat*) ;

mrb_value
mrb_dir_existp(mrb_state *mrb, mrb_value klass)
{
  mrb_value path;
  struct stat sb;
  char *cpath;

  mrb_get_args(mrb, "S", &path);
  cpath = mrb_str_to_cstr(mrb, path);
  if (stat(cpath, &sb) == 0 && S_ISDIR(sb.st_mode)) {
    return mrb_true_value();
  } else {
    return mrb_false_value();
  }
}
