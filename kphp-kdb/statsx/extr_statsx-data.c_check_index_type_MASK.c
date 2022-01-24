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

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 

int FUNC3 (int idx_fd) {
  FUNC1 (idx_fd, 0, SEEK_SET);
  int magic;
  FUNC2 (idx_fd, &magic, sizeof (int));
  if (FUNC0 (magic) < 0) {
    return -1;
  }
  FUNC1 (idx_fd, 0, SEEK_SET);
  return 0;
}