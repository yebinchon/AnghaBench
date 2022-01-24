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
struct TYPE_5__ {int /*<<< orphan*/  f_ffree; int /*<<< orphan*/  f_files; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_bsize; scalar_t__ f_type; } ;
typedef  TYPE_1__ uv_statfs_t ;
struct TYPE_6__ {TYPE_1__* ptr; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ uv_fs_t ;
struct statvfs {int dummy; } ;
struct statfs {int /*<<< orphan*/  f_ffree; int /*<<< orphan*/  f_files; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_bsize; scalar_t__ f_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct statfs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct statvfs*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(uv_fs_t* req) {
  uv_statfs_t* stat_fs;
#if defined(__sun) || defined(__MVS__) || defined(__NetBSD__) || defined(__HAIKU__)
  struct statvfs buf;

  if (0 != statvfs(req->path, &buf))
#else
  struct statfs buf;

  if (0 != FUNC0(req->path, &buf))
#endif /* defined(__sun) */
    return -1;

  stat_fs = FUNC2(sizeof(*stat_fs));
  if (stat_fs == NULL) {
    errno = ENOMEM;
    return -1;
  }

#if defined(__sun) || defined(__MVS__) || defined(__OpenBSD__) || defined(__NetBSD__) || defined(__HAIKU__)
  stat_fs->f_type = 0;  /* f_type is not supported. */
#else
  stat_fs->f_type = buf.f_type;
#endif
  stat_fs->f_bsize = buf.f_bsize;
  stat_fs->f_blocks = buf.f_blocks;
  stat_fs->f_bfree = buf.f_bfree;
  stat_fs->f_bavail = buf.f_bavail;
  stat_fs->f_files = buf.f_files;
  stat_fs->f_ffree = buf.f_ffree;
  req->ptr = stat_fs;
  return 0;
}