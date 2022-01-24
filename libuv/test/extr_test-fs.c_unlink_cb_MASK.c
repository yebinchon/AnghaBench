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
 scalar_t__ UV_FS_UNLINK ; 
 int /*<<< orphan*/  unlink_cb_count ; 
 TYPE_1__ unlink_req ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(uv_fs_t* req) {
  FUNC0(req == &unlink_req);
  FUNC0(req->fs_type == UV_FS_UNLINK);
  FUNC0(req->result == 0);
  unlink_cb_count++;
  FUNC1(req);
}