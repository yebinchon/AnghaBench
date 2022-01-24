#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;
struct TYPE_7__ {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_WRITE ; 
 int /*<<< orphan*/  fdatasync_cb ; 
 int /*<<< orphan*/  fdatasync_req ; 
 int /*<<< orphan*/  loop ; 
 TYPE_5__ open_req1 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_cb_count ; 
 TYPE_1__ write_req ; 

__attribute__((used)) static void FUNC3(uv_fs_t* req) {
  int r;
  FUNC0(req == &write_req);
  FUNC0(req->fs_type == UV_FS_WRITE);
  FUNC0(req->result >= 0);  /* FIXME(bnoordhuis) Check if requested size? */
  write_cb_count++;
  FUNC2(req);
  r = FUNC1(loop, &fdatasync_req, open_req1.result, fdatasync_cb);
  FUNC0(r == 0);
}