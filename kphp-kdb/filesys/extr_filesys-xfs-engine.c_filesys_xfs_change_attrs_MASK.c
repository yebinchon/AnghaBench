#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_mode; } ;
struct lev_filesys_xfs_change_attrs {int filename_size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; int /*<<< orphan*/  mode; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pot_copy_attrs ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 

__attribute__((used)) static void FUNC5 (struct lev_filesys_xfs_change_attrs *E) {
  char name[PATH_MAX];
  FUNC0 (E->filename_size < PATH_MAX - 1);
  FUNC1 (name, E->filename, E->filename_size);
  name[E->filename_size] = 0;
  FUNC4 (3, "name = %s\n", name);
  struct stat st;
  st.st_mode = E->mode;
  st.st_atime = E->actime;
  st.st_mtime = E->modtime;
  st.st_uid = E->uid;
  st.st_gid = E->gid;
  FUNC3 (FUNC2 (pot_copy_attrs, NULL, name, &st));
}