#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file_info {int flags; scalar_t__ orig_file_size; int fsize; int /*<<< orphan*/  fd; scalar_t__ head_data; scalar_t__ filename; } ;
struct TYPE_2__ {scalar_t__ last36_bytes; scalar_t__ first36_bytes; } ;
typedef  TYPE_1__ kfs_binlog_zip_header_t ;

/* Variables and functions */
 scalar_t__ Buffer ; 
 int FIF_ZIPPED ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int const) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5 (struct file_info *FS, struct file_info *FD) {
  FUNC0 (!(FS->flags & FIF_ZIPPED) && (FD->flags & FIF_ZIPPED));
  int r;
  const int l1 = FUNC4 (FS->filename), l2 = FUNC4 (FD->filename);
  if (l2 != l1 + 14 || FUNC2 (FS->filename, FD->filename, l1) || FS->orig_file_size != FD->orig_file_size) {
    return 0;
  }

  kfs_binlog_zip_header_t *H = (kfs_binlog_zip_header_t *) FD->head_data;
  if (FUNC2 (FS->head_data, H->first36_bytes, 36)) {
    return 0;
  }

  FUNC0 (FUNC1 (FS->fd, FS->fsize - 36, SEEK_SET) == FS->fsize - 36);
  r = FUNC3 (FS->fd, Buffer, 36);
  if (r != 36 || FUNC2 (Buffer, H->last36_bytes, 36)) {
    return 0;
  }

  return 1;
}