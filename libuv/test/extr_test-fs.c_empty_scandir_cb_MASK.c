#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_dirent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EOF ; 
 scalar_t__ UV_FS_SCANDIR ; 
 int /*<<< orphan*/  scandir_cb_count ; 
 TYPE_1__ scandir_req ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uv_fs_t* req) {
  uv_dirent_t dent;

  FUNC0(req == &scandir_req);
  FUNC0(req->fs_type == UV_FS_SCANDIR);
  FUNC0(req->result == 0);
  FUNC0(req->ptr == NULL);
  FUNC0(UV_EOF == FUNC2(req, &dent));
  FUNC1(req);
  scandir_cb_count++;
}