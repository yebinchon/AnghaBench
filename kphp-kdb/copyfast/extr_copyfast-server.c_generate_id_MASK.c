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
 long long CLUSTER_MASK ; 
 long long ID_MASK ; 
 int /*<<< orphan*/  id_tree ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,long long) ; 

long long FUNC2 (long long x) {
  while (1) {
    int ok = ((x & ID_MASK) != 0);
    if (ok && FUNC1 (id_tree, x)) {
      ok = 0;
    }
    if (ok) {
      return x;
    }
    x = (x & CLUSTER_MASK) | (unsigned) FUNC0();
  }
  return 0;
}