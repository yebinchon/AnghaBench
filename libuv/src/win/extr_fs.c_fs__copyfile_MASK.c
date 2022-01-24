#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef  TYPE_4__ uv_stat_t ;
struct TYPE_12__ {int file_flags; int /*<<< orphan*/  new_pathw; } ;
struct TYPE_13__ {TYPE_2__ info; } ;
struct TYPE_11__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_15__ {scalar_t__ result; TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_5__ uv_fs_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ UV_EBUSY ; 
 int /*<<< orphan*/  UV_ENOSYS ; 
 int UV_FS_COPYFILE_EXCL ; 
 int UV_FS_COPYFILE_FICLONE_FORCE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(uv_fs_t* req) {
  int flags;
  int overwrite;
  uv_stat_t statbuf;
  uv_stat_t new_statbuf;

  flags = req->fs.info.file_flags;

  if (flags & UV_FS_COPYFILE_FICLONE_FORCE) {
    FUNC3(req, UV_ENOSYS, ERROR_NOT_SUPPORTED);
    return;
  }

  overwrite = flags & UV_FS_COPYFILE_EXCL;

  if (FUNC0(req->file.pathw, req->fs.info.new_pathw, overwrite) != 0) {
    FUNC2(req, 0);
    return;
  }

  FUNC4(req, FUNC1());
  if (req->result != UV_EBUSY)
    return;

  /* if error UV_EBUSY check if src and dst file are the same */
  if (FUNC5(req->file.pathw, 0, &statbuf) != 0 ||
      FUNC5(req->fs.info.new_pathw, 0, &new_statbuf) != 0) {
    return;
  }

  if (statbuf.st_dev == new_statbuf.st_dev &&
      statbuf.st_ino == new_statbuf.st_ino) {
    FUNC2(req, 0);
  }
}