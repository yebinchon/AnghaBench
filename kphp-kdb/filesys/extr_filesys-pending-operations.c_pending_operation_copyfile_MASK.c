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
struct static_pending_operation {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  enum pending_operation_tp { ____Placeholder_pending_operation_tp } pending_operation_tp ;
typedef  scalar_t__ dyn_mark_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,char const* const,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char const* const,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (struct static_pending_operation*,int,char*,char const* const,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int po_olddir_length ; 
 int pot_mkdir ; 
 int pot_rename ; 
 int pot_symlink ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*) ; 
 int FUNC13 (int,void*,int) ; 

void FUNC14 (int transaction_id, int *transaction_file_no, const char *const name, void *data, int data_size, struct stat *S, struct static_pending_operation *P, dyn_mark_t release_mark) {
  enum pending_operation_tp type;
  char *oldpath;
  if (FUNC1 (S->st_mode)) {
    type = pot_symlink;
    oldpath = (char *) data;
  } else if (FUNC0 (S->st_mode)) {
    type = pot_mkdir;
    oldpath = NULL;
  } else {
    char full_tmp_filename[PATH_MAX];
    FUNC4 (transaction_id, transaction_file_no, name, full_tmp_filename);
    FUNC12 (4, "full_tmp_filename = %s\n", full_tmp_filename);
    int fd = FUNC8 (full_tmp_filename, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);
    if (fd < 0) {
      FUNC7 ("fail to open file '%s', flags: O_CREAT | O_TRUNC | O_WRONLY | O_EXCL. %m\n", full_tmp_filename);
      FUNC6 (1);
    }
    FUNC2 (fd >= 0);
    FUNC2 (data_size == FUNC13 (fd, data, data_size));
    FUNC2 (!FUNC3 (fd));
    type = pot_rename;
    oldpath = full_tmp_filename + po_olddir_length + 1;
  }
  if (P) {
    FUNC10 (P, type, oldpath, name, S);
  } else {
    if (release_mark) {
      FUNC5 (release_mark);
    }
    FUNC11 (FUNC9 (type, oldpath, name, S));
  }
}