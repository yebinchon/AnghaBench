#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ fs_type; scalar_t__ result; TYPE_2__* ptr; } ;
typedef  TYPE_1__ uv_fs_t ;
struct TYPE_8__ {int /*<<< orphan*/  nentries; int /*<<< orphan*/  dirents; } ;
typedef  TYPE_2__ uv_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ UV_FS_OPENDIR ; 
 int /*<<< orphan*/  dirents ; 
 int /*<<< orphan*/  non_empty_opendir_cb_count ; 
 int /*<<< orphan*/  non_empty_readdir_cb ; 
 TYPE_1__ opendir_req ; 
 int /*<<< orphan*/  readdir_req ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(uv_fs_t* req) {
  uv_dir_t* dir;
  int r;

  FUNC1(req == &opendir_req);
  FUNC1(req->fs_type == UV_FS_OPENDIR);
  FUNC1(req->result == 0);
  FUNC1(req->ptr != NULL);

  dir = req->ptr;
  dir->dirents = dirents;
  dir->nentries = FUNC0(dirents);

  r = FUNC3(FUNC2(),
                    &readdir_req,
                    dir,
                    non_empty_readdir_cb);
  FUNC1(r == 0);
  FUNC4(req);
  ++non_empty_opendir_cb_count;
}