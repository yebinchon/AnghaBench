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
 int /*<<< orphan*/  FUNC0 (void* (*) (long long)) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (void* (*) (long long)) ; 
 int /*<<< orphan*/  FUNC3 (void* (*) (long long)) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (long long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,long long) ; 

__attribute__((used)) static inline void *FUNC7 (long long x) {
  FUNC0 (malloc);
  FUNC3 (malloc);
  void *r = FUNC5 (x);
  FUNC4 (r);
  FUNC6 (r, 0, x);
  FUNC1 (x);
  FUNC2 (malloc);
  return r;
}