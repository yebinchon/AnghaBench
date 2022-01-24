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
struct netrule {int type; unsigned int mask2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct netrule*,unsigned int) ; 

int FUNC2 (struct netrule *A, unsigned ip1, unsigned ip2) {
  FUNC0 (A->type);
  if (A->type == 1) {
    return FUNC1 (A, ip1) && FUNC1 (A, ip2);
  } else {
    return 2 * (FUNC1 (A, ip1) && FUNC1 (A, ip2) && ((ip1 & ~(A->mask2)) == (ip2 & ~(A->mask2))));
  }
}