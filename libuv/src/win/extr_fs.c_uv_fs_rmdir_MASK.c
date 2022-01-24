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
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_fs_t ;
typedef  int /*<<< orphan*/ * uv_fs_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POST ; 
 int /*<<< orphan*/  UV_FS_RMDIR ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

int FUNC3(uv_loop_t* loop, uv_fs_t* req, const char* path, uv_fs_cb cb) {
  int err;

  FUNC0(UV_FS_RMDIR);
  err = FUNC1(req, path, NULL, cb != NULL);
  if (err) {
    return FUNC2(err);
  }

  POST;
}