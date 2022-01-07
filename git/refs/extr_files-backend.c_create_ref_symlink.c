
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_lock {int lk; } ;


 int fprintf (int ,char*) ;
 int free (char*) ;
 char* get_locked_file_path (int *) ;
 int stderr ;
 int symlink (char const*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int create_ref_symlink(struct ref_lock *lock, const char *target)
{
 int ret = -1;

 char *ref_path = get_locked_file_path(&lock->lk);
 unlink(ref_path);
 ret = symlink(target, ref_path);
 free(ref_path);

 if (ret)
  fprintf(stderr, "no symlink - falling back to symbolic ref\n");

 return ret;
}
