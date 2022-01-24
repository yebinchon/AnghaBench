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

int FUNC0 (int u, int v, int left_subtree_size_threshold) {
  if (v - u < left_subtree_size_threshold) {
    return 0;
  }
  int m = (u + v) >> 1;
  return 1 + FUNC0 (u, m, left_subtree_size_threshold) + FUNC0 (m, v, left_subtree_size_threshold);
}