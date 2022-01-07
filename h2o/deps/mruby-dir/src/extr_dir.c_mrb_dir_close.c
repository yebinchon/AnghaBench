
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_dir {int * dir; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 int closedir (int *) ;
 int mrb_dir_type ;
 scalar_t__ mrb_get_datatype (int *,int ,int *) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_dir_close(mrb_state *mrb, mrb_value self)
{
  struct mrb_dir *mdir;
  mdir = (struct mrb_dir *)mrb_get_datatype(mrb, self, &mrb_dir_type);
  if (!mdir) return mrb_nil_value();
  if (!mdir->dir) {
    mrb_raise(mrb, E_IO_ERROR, "closed directory");
  }
  if (closedir(mdir->dir) == -1) {
    mrb_sys_fail(mrb, "closedir");
  }
  mdir->dir = ((void*)0);
  return mrb_nil_value();
}
