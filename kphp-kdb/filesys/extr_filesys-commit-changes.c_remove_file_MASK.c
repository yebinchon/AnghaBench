#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lev_filesys_rmdir {int dirpath_size; int /*<<< orphan*/  dirpath; } ;
struct TYPE_3__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_FILESYS_XFS_FILE_REMOVE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  faults ; 
 struct lev_filesys_rmdir* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 
 char* old_dir ; 
 int old_dir_length ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pot_remove ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*,int,char*,char*,char*) ; 
 scalar_t__ status ; 
 int FUNC10 (char*) ; 
 char* tmp_dir ; 
 scalar_t__ use_clone ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char*) ; 

void FUNC12 (int l, file_t *x) {
  char *local_path = old_dir + old_dir_length + 1;
  FUNC0 (old_dir, l, x->filename);
  FUNC11 (3, "Remove: %s\n", local_path);
  if (status) {
    FUNC8 ("Remove: %s\n", local_path);
  } else {
    char a[PATH_MAX];
    int r = 0;
    FUNC1 (FUNC9 (a, PATH_MAX, "%s/%s", tmp_dir, local_path) < PATH_MAX);
    if (use_clone) {
      r = FUNC2 (a);
    } else {
      FUNC7 (FUNC6 (pot_remove, NULL, local_path, NULL));
    }
    if (!r) {
      const int name_length = FUNC10 (local_path);
      struct lev_filesys_rmdir *E = FUNC3 (LEV_FILESYS_XFS_FILE_REMOVE, sizeof (struct lev_filesys_rmdir) + name_length);
      E->dirpath_size = name_length;
      FUNC5 (E->dirpath, local_path, name_length);
    } else {
      FUNC4 ("delete_file (%s/%s) failed (exit_code = %d).\n", tmp_dir, local_path, r);
      faults++;
    }
  }
  old_dir[l] = 0;
}