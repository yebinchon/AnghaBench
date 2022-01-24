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
 size_t ansI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int engineF ; 
 int engineN ; 
 int /*<<< orphan*/ ** f ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,long long*) ; 
 scalar_t__ left_files ; 

void FUNC3 (void) {
  while (left_files) {
    long long sum = 0;

    int i;
    for (i = engineF; i < engineN; i++) {
      if (f[i] != NULL) {
        long long cur;
        if (FUNC2 (f[i], "%lld", &cur) <= 0) {
          left_files--;
        } else {
          sum += cur;
        }
      }
    }

    FUNC0 (left_files == 0 || left_files == engineN - engineF);
    if (left_files != 0) {
      FUNC1 (f[ansI], "%lld\n", sum);
    }
  }
}