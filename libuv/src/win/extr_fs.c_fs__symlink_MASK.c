#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int file_flags; int /*<<< orphan*/ * new_pathw; } ;
struct TYPE_10__ {TYPE_1__ info; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pathw; } ;
struct TYPE_12__ {TYPE_2__ fs; TYPE_3__ file; } ;
typedef  TYPE_4__ uv_fs_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE ; 
 int SYMBOLIC_LINK_FLAG_DIRECTORY ; 
 int UV_FS_SYMLINK_DIR ; 
 int UV_FS_SYMLINK_JUNCTION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int uv__file_symlink_usermode_flag ; 

__attribute__((used)) static void FUNC5(uv_fs_t* req) {
  WCHAR* pathw;
  WCHAR* new_pathw;
  int flags;
  int err;

  pathw = req->file.pathw;
  new_pathw = req->fs.info.new_pathw;

  if (req->fs.info.file_flags & UV_FS_SYMLINK_JUNCTION) {
    FUNC4(req, pathw, new_pathw);
    return;
  }

  if (req->fs.info.file_flags & UV_FS_SYMLINK_DIR)
    flags = SYMBOLIC_LINK_FLAG_DIRECTORY | uv__file_symlink_usermode_flag;
  else
    flags = uv__file_symlink_usermode_flag;

  if (FUNC0(new_pathw, pathw, flags)) {
    FUNC2(req, 0);
    return;
  }

  /* Something went wrong. We will test if it is because of user-mode
   * symlinks.
   */
  err = FUNC1();
  if (err == ERROR_INVALID_PARAMETER &&
      flags & SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE) {
    /* This system does not support user-mode symlinks. We will clear the
     * unsupported flag and retry.
     */
    uv__file_symlink_usermode_flag = 0;
    FUNC5(req);
  } else {
    FUNC3(req, err);
  }
}