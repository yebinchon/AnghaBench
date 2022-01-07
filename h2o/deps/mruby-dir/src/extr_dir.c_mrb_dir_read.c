
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_dir {int dir; } ;
struct dirent {int d_name; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 int mrb_dir_type ;
 scalar_t__ mrb_get_datatype (int *,int ,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_new_cstr (int *,int ) ;
 struct dirent* readdir (int ) ;

mrb_value
mrb_dir_read(mrb_state *mrb, mrb_value self)
{
  struct mrb_dir *mdir;
  struct dirent *dp;

  mdir = (struct mrb_dir *)mrb_get_datatype(mrb, self, &mrb_dir_type);
  if (!mdir) return mrb_nil_value();
  if (!mdir->dir) {
    mrb_raise(mrb, E_IO_ERROR, "closed directory");
  }
  dp = readdir(mdir->dir);
  if (dp != ((void*)0)) {
    return mrb_str_new_cstr(mrb, dp->d_name);
  } else {
    return mrb_nil_value();
  }
}
