#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file_info {scalar_t__ fsize; scalar_t__ head_crc32; int /*<<< orphan*/  tail_data; int /*<<< orphan*/  fd; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int BSIZE ; 
 int /*<<< orphan*/  Buffer ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct file_info *FS, struct file_info *FD) {
  int l1 = FUNC4 (FS->filename), l2 = FUNC4 (FD->filename), r;
  if (l2 != l1 + 11 || FUNC2 (FS->filename, FD->filename, l1) || FS->fsize < FD->fsize) {
    return 0;
  }

  if (FS->head_crc32 != FD->head_crc32) {
    return 0;
  }

  FUNC0 (FUNC1 (FS->fd, FD->fsize - BSIZE, SEEK_SET) == FD->fsize - BSIZE);
  r = FUNC3 (FS->fd, Buffer, BSIZE);
  if (r != BSIZE) {
    return 0;
  }
  return !FUNC2 (Buffer, FD->tail_data, BSIZE);
}