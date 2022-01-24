#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lev_filesys_xfs_change_attrs {int filename_size; int /*<<< orphan*/  filename; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {TYPE_2__ st; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_FILESYS_XFS_CHANGE_ATTRS ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct lev_filesys_xfs_change_attrs* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 
 char* new_dir ; 
 int new_dir_length ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pot_copy_attrs ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*,int,char*,char*,char*) ; 
 scalar_t__ status ; 
 int FUNC11 (char*) ; 
 char* tmp_dir ; 
 scalar_t__ use_clone ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 

__attribute__((used)) static int FUNC13 (int new_l, file_t *x, int attrib_mask) {
  FUNC0 (new_dir, new_l, x->filename);
  if (status) {
    FUNC9 ("New attrs: %s ", new_dir + new_dir_length + 1);
    FUNC8 (attrib_mask);
  } else {
    char *name = new_dir + new_dir_length + 1;
    const int name_length = FUNC11 (name);
    if (use_clone) {
      char a[PATH_MAX];
      FUNC1 (FUNC10 (a, PATH_MAX, "%s/%s", tmp_dir, name) < PATH_MAX);
      int r = FUNC4 (a, &x->st);
      if (r < 0) {
        FUNC12 (1, "lcopy_attrs returns error code %d.\n", r);
        return -2;
      }
    } else {
      FUNC7 (FUNC6 (pot_copy_attrs, NULL, name, &x->st));
    }

    if (attrib_mask >= 0) {
      FUNC3 (x);
    }
    struct lev_filesys_xfs_change_attrs *E = FUNC2 (LEV_FILESYS_XFS_CHANGE_ATTRS, sizeof (struct lev_filesys_xfs_change_attrs) + name_length);
    E->mode = x->st.st_mode;
    E->actime = x->st.st_atime;
    E->modtime = x->st.st_mtime;
    E->uid = x->st.st_uid;
    E->gid = x->st.st_gid;
    E->filename_size = name_length;
    FUNC5 (E->filename, name, name_length);
  }
  new_dir[new_l] = 0;
  return 0;
}