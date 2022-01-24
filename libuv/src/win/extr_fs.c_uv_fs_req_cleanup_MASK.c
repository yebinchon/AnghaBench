#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * bufs; int /*<<< orphan*/ * new_pathw; int /*<<< orphan*/ * bufsml; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pathw; } ;
struct TYPE_11__ {int flags; scalar_t__ fs_type; int /*<<< orphan*/ * ptr; TYPE_3__ fs; TYPE_1__ file; int /*<<< orphan*/ * path; } ;
typedef  TYPE_4__ uv_fs_t ;

/* Variables and functions */
 int UV_FS_CLEANEDUP ; 
 int UV_FS_FREE_PATHS ; 
 int UV_FS_FREE_PTR ; 
 scalar_t__ UV_FS_READDIR ; 
 scalar_t__ UV_FS_SCANDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void FUNC3(uv_fs_t* req) {
  if (req == NULL)
    return;

  if (req->flags & UV_FS_CLEANEDUP)
    return;

  if (req->flags & UV_FS_FREE_PATHS)
    FUNC0(req->file.pathw);

  if (req->flags & UV_FS_FREE_PTR) {
    if (req->fs_type == UV_FS_SCANDIR && req->ptr != NULL)
      FUNC2(req);
    else if (req->fs_type == UV_FS_READDIR)
      FUNC1(req);
    else
      FUNC0(req->ptr);
  }

  if (req->fs.info.bufs != req->fs.info.bufsml)
    FUNC0(req->fs.info.bufs);

  req->path = NULL;
  req->file.pathw = NULL;
  req->fs.info.new_pathw = NULL;
  req->fs.info.bufs = NULL;
  req->ptr = NULL;

  req->flags |= UV_FS_CLEANEDUP;
}