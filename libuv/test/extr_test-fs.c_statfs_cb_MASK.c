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
struct TYPE_5__ {scalar_t__ f_type; scalar_t__ f_bsize; scalar_t__ f_blocks; scalar_t__ f_bfree; scalar_t__ f_bavail; scalar_t__ f_files; scalar_t__ f_ffree; } ;
typedef  TYPE_1__ uv_statfs_t ;
struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; TYPE_1__* ptr; } ;
typedef  TYPE_2__ uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_FS_STATFS ; 
 int /*<<< orphan*/  statfs_cb_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(uv_fs_t* req) {
  uv_statfs_t* stats;

  FUNC0(req->fs_type == UV_FS_STATFS);
  FUNC0(req->result == 0);
  FUNC0(req->ptr != NULL);
  stats = req->ptr;

#if defined(_WIN32) || defined(__sun) || defined(_AIX) || defined(__MVS__)
  ASSERT(stats->f_type == 0);
#else
  FUNC0(stats->f_type > 0);
#endif

  FUNC0(stats->f_bsize > 0);
  FUNC0(stats->f_blocks > 0);
  FUNC0(stats->f_bfree <= stats->f_blocks);
  FUNC0(stats->f_bavail <= stats->f_bfree);

#ifdef _WIN32
  ASSERT(stats->f_files == 0);
  ASSERT(stats->f_ffree == 0);
#else
  /* There is no assertion for stats->f_files that makes sense, so ignore it. */
  FUNC0(stats->f_ffree <= stats->f_files);
#endif
  FUNC1(req);
  FUNC0(req->ptr == NULL);
  statfs_cb_count++;
}