#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fs_type; scalar_t__ result; scalar_t__ data; } ;
typedef  TYPE_1__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_FCHMOD ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  fchmod_cb_count ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(uv_fs_t* req) {
  FUNC0(req->fs_type == UV_FS_FCHMOD);
  FUNC0(req->result == 0);
  fchmod_cb_count++;
  FUNC2(req);
  FUNC1("test_file", *(int*)req->data);
}