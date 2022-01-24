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
struct TYPE_9__ {int mode; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int /*<<< orphan*/  pathw; } ;
struct TYPE_11__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_4__ uv_fs_t ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UV_EPERM ; 
 int W_OK ; 

__attribute__((used)) static void FUNC4(uv_fs_t* req) {
  DWORD attr = FUNC0(req->file.pathw);

  if (attr == INVALID_FILE_ATTRIBUTES) {
    FUNC3(req, FUNC1());
    return;
  }

  /*
   * Access is possible if
   * - write access wasn't requested,
   * - or the file isn't read-only,
   * - or it's a directory.
   * (Directories cannot be read-only on Windows.)
   */
  if (!(req->fs.info.mode & W_OK) ||
      !(attr & FILE_ATTRIBUTE_READONLY) ||
      (attr & FILE_ATTRIBUTE_DIRECTORY)) {
    FUNC2(req, 0);
  } else {
    FUNC3(req, UV_EPERM);
  }

}