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
 int Q_IGNORE_SORT_MASK ; 
 int Q_RECEIVE_RAW ; 
 int Q_SORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2 (char *buff, int flags, int slice_limit) {
  int l = 0;
  buff[l ++] = '#';
  if (flags & Q_RECEIVE_RAW) {
    buff[l ++] = '%';
  } else {
    FUNC0 (0);
  }
  char sort = flags & Q_SORT_MASK;
  if (sort && !(flags & Q_IGNORE_SORT_MASK)) {
    buff[l ++] = sort;
  }
  if (slice_limit) {
    l += FUNC1 (buff + l, "%d", slice_limit);
  }
  return l;
}