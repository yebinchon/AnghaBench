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
struct TYPE_6__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ptr; TYPE_1__ file; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_FLAG_OPEN_REPARSE_POINT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_FS_FREE_PTR ; 
 scalar_t__ FUNC5 (scalar_t__,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(uv_fs_t* req) {
  HANDLE handle;

  handle = FUNC1(req->file.pathw,
                       0,
                       0,
                       NULL,
                       OPEN_EXISTING,
                       FILE_FLAG_OPEN_REPARSE_POINT | FILE_FLAG_BACKUP_SEMANTICS,
                       NULL);

  if (handle == INVALID_HANDLE_VALUE) {
    FUNC4(req, FUNC2());
    return;
  }

  if (FUNC5(handle, (char**) &req->ptr, NULL) != 0) {
    FUNC4(req, FUNC2());
    FUNC0(handle);
    return;
  }

  req->flags |= UV_FS_FREE_PTR;
  FUNC3(req, 0);

  FUNC0(handle);
}