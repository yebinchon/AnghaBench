
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp_objdir {int path; } ;


 int remove_dir_recursively (int *,int ) ;
 struct tmp_objdir* the_tmp_objdir ;
 int tmp_objdir_free (struct tmp_objdir*) ;

__attribute__((used)) static int tmp_objdir_destroy_1(struct tmp_objdir *t, int on_signal)
{
 int err;

 if (!t)
  return 0;

 if (t == the_tmp_objdir)
  the_tmp_objdir = ((void*)0);






 err = remove_dir_recursively(&t->path, 0);






 if (!on_signal)
  tmp_objdir_free(t);
 return err;
}
