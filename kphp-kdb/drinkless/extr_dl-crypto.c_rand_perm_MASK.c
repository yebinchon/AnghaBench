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
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int* FUNC2 (size_t) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int *FUNC6 (int n) {
  int *v = FUNC2 ((size_t)n * sizeof (int)), i;

  FUNC5 (1);
  struct timespec tv;
  FUNC0 (FUNC1 (CLOCK_REALTIME, &tv) >= 0);
  FUNC4 ((unsigned int)tv.tv_nsec * 123456789u + (unsigned int)tv.tv_sec * 987654321u);

  for (i = 0; i < n; i++) {
    v[i] = FUNC3() % (i + 1);
  }

  return v;
}