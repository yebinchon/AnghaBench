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
struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_CLOSE ; 
 int close_cb_count ; 
 TYPE_1__ close_req ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  unlink_cb ; 
 int /*<<< orphan*/  unlink_req ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uv_fs_t* req) {
  int r;
  FUNC0(req == &close_req);
  FUNC0(req->fs_type == UV_FS_CLOSE);
  FUNC0(req->result == 0);
  close_cb_count++;
  FUNC1(req);
  if (close_cb_count == 3) {
    r = FUNC2(loop, &unlink_req, "test_file2", unlink_cb);
    FUNC0(r == 0);
  }
}