
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lev_filesys_rmdir {int dirpath_size; int dirpath; } ;
struct TYPE_3__ {int filename; } ;
typedef TYPE_1__ file_t ;


 int LEV_FILESYS_XFS_FILE_REMOVE ;
 int PATH_MAX ;
 int append_path (char*,int,int ) ;
 int assert (int) ;
 int delete_file (char*) ;
 int faults ;
 struct lev_filesys_rmdir* filesys_xfs_alloc_log_event (int ,int) ;
 int kprintf (char*,char*,char*,int) ;
 int memcpy (int ,char*,int const) ;
 char* old_dir ;
 int old_dir_length ;
 int pending_operation_create (int ,int *,char*,int *) ;
 int pending_operation_push (int ) ;
 int pot_remove ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ status ;
 int strlen (char*) ;
 char* tmp_dir ;
 scalar_t__ use_clone ;
 int vkprintf (int,char*,char*) ;

void remove_file (int l, file_t *x) {
  char *local_path = old_dir + old_dir_length + 1;
  append_path (old_dir, l, x->filename);
  vkprintf (3, "Remove: %s\n", local_path);
  if (status) {
    printf ("Remove: %s\n", local_path);
  } else {
    char a[PATH_MAX];
    int r = 0;
    assert (snprintf (a, PATH_MAX, "%s/%s", tmp_dir, local_path) < PATH_MAX);
    if (use_clone) {
      r = delete_file (a);
    } else {
      pending_operation_push (pending_operation_create (pot_remove, ((void*)0), local_path, ((void*)0)));
    }
    if (!r) {
      const int name_length = strlen (local_path);
      struct lev_filesys_rmdir *E = filesys_xfs_alloc_log_event (LEV_FILESYS_XFS_FILE_REMOVE, sizeof (struct lev_filesys_rmdir) + name_length);
      E->dirpath_size = name_length;
      memcpy (E->dirpath, local_path, name_length);
    } else {
      kprintf ("delete_file (%s/%s) failed (exit_code = %d).\n", tmp_dir, local_path, r);
      faults++;
    }
  }
  old_dir[l] = 0;
}
