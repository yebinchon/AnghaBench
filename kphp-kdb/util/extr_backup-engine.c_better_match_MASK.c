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
struct file_info {scalar_t__ fsize; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1 (struct file_info *FD, struct file_info *FB) {
  if (FD->fsize > FB->fsize) {
    return 1;
  }
  if (FD->fsize < FB->fsize) {
    return -1;
  }
  return FUNC0 (FD->filename, FB->filename);
}