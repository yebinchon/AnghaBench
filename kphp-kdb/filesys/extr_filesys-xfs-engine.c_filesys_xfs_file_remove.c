
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_filesys_rmdir {int dirpath_size; int dirpath; } ;


 int PATH_MAX ;
 int assert (int) ;
 int memcpy (char*,int ,int) ;
 int pending_operation_create (int ,int *,char*,int *) ;
 int pending_operation_push (int ) ;
 int pot_remove ;

__attribute__((used)) static void filesys_xfs_file_remove (struct lev_filesys_rmdir *E) {
  char name[PATH_MAX];
  assert (E->dirpath_size < PATH_MAX);
  memcpy (name, E->dirpath, E->dirpath_size);
  name[E->dirpath_size] = 0;
  pending_operation_push (pending_operation_create (pot_remove, ((void*)0), name, ((void*)0)));
}
