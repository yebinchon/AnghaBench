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
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  file_revlist_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC2 (object_id_t x, file_revlist_entry_t *RData, int size) {
  long l = -1, r = size, h;
  while (r - l > 1) {  // RData[l] < x <= RData[r]
    h = (r + l) >> 1;
    if (FUNC1 (FUNC0(RData,h), x)) {
      l = h;
    } else {
      r = h;
    }
  }
  return r;
}