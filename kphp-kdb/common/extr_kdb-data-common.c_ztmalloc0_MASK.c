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
 int /*<<< orphan*/  PTRSIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,long) ; 

void *FUNC3 (long size) {
  void *res = FUNC1 (size, PTRSIZE);
  FUNC0 (res);
  FUNC2 (res, 0, size);
  return res;
}