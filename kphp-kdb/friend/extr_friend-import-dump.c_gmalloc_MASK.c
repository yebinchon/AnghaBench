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
 unsigned int GS ; 
 unsigned int GT ; 
 unsigned int MAX_GROUPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void *FUNC1 (unsigned size) {
  void *res;
  FUNC0 (size <= MAX_GROUPS);
  FUNC0 (GS >= GT && GS <= GT + MAX_GROUPS - 8);
  res = GS += (- (long) GS) & 3;
  FUNC0 (GT + MAX_GROUPS - GS >= size);
  GS += size;
  return res;
}