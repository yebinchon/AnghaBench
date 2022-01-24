#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int st_size; } ;
typedef  TYPE_1__ uv_stat_t ;
struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; TYPE_1__* ptr; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int /*<<< orphan*/  test_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_FSTAT ; 
 int /*<<< orphan*/  fstat_cb_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(uv_fs_t* req) {
  uv_stat_t* s = req->ptr;
  FUNC0(req->fs_type == UV_FS_FSTAT);
  FUNC0(req->result == 0);
  FUNC0(s->st_size == sizeof(test_buf));
  FUNC1(req);
  fstat_cb_count++;
}