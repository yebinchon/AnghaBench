#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct TYPE_7__ {TYPE_3__ time; } ;
struct TYPE_8__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_1__ fs; TYPE_2__ file; } ;
typedef  TYPE_4__ uv_fs_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_fs_t* req) {
  HANDLE handle;

  handle = FUNC1(req->file.pathw,
                       FILE_WRITE_ATTRIBUTES,
                       FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                       NULL,
                       OPEN_EXISTING,
                       FILE_FLAG_BACKUP_SEMANTICS,
                       NULL);

  if (handle == INVALID_HANDLE_VALUE) {
    FUNC3(req, FUNC2());
    return;
  }

  if (FUNC4(handle, req->fs.time.atime, req->fs.time.mtime) != 0) {
    FUNC3(req, FUNC2());
    FUNC0(handle);
    return;
  }

  FUNC0(handle);

  req->result = 0;
}