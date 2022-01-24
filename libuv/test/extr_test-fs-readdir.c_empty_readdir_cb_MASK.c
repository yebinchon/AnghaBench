#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_READDIR ; 
 int /*<<< orphan*/  closedir_req ; 
 int /*<<< orphan*/  empty_closedir_cb ; 
 TYPE_1__ readdir_req ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(uv_fs_t* req) {
  uv_dir_t* dir;
  int r;

  FUNC0(req == &readdir_req);
  FUNC0(req->fs_type == UV_FS_READDIR);
  FUNC0(req->result == 0);
  dir = req->ptr;
  FUNC3(req);
  r = FUNC2(FUNC1(),
                     &closedir_req,
                     dir,
                     empty_closedir_cb);
  FUNC0(r == 0);
}