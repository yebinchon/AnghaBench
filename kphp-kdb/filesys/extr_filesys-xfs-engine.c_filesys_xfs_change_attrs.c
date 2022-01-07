
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_gid; int st_uid; int st_mtime; int st_atime; int st_mode; } ;
struct lev_filesys_xfs_change_attrs {int filename_size; int gid; int uid; int modtime; int actime; int mode; int filename; } ;


 int PATH_MAX ;
 int assert (int) ;
 int memcpy (char*,int ,int) ;
 int pending_operation_create (int ,int *,char*,struct stat*) ;
 int pending_operation_push (int ) ;
 int pot_copy_attrs ;
 int vkprintf (int,char*,char*) ;

__attribute__((used)) static void filesys_xfs_change_attrs (struct lev_filesys_xfs_change_attrs *E) {
  char name[PATH_MAX];
  assert (E->filename_size < PATH_MAX - 1);
  memcpy (name, E->filename, E->filename_size);
  name[E->filename_size] = 0;
  vkprintf (3, "name = %s\n", name);
  struct stat st;
  st.st_mode = E->mode;
  st.st_atime = E->actime;
  st.st_mtime = E->modtime;
  st.st_uid = E->uid;
  st.st_gid = E->gid;
  pending_operation_push (pending_operation_create (pot_copy_attrs, ((void*)0), name, &st));
}
