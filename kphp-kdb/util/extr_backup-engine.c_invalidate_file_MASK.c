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
struct file_info {int fd; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct file_info*) ; 

__attribute__((used)) static int FUNC2 (struct file_info *file) {
  FUNC1 (file);
  if (file->fd >= 0) {
    FUNC0 (file->fd);
    file->fd = -1;
  }
  file->flags |= FIF_ERROR;
  return -1;
}