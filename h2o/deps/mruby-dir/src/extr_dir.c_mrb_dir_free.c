
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_dir {int * dir; } ;
typedef int mrb_state ;


 int closedir (int *) ;
 int mrb_free (int *,struct mrb_dir*) ;

void
mrb_dir_free(mrb_state *mrb, void *ptr)
{
  struct mrb_dir *mdir = (struct mrb_dir *)ptr;

  if (mdir->dir) {
    closedir(mdir->dir);
    mdir->dir = ((void*)0);
  }
  mrb_free(mrb, mdir);
}
