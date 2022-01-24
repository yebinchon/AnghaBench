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
typedef  int /*<<< orphan*/  transaction_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transaction_interrupting_signal ; 

__attribute__((used)) static int FUNC3 (transaction_t *T) {
  while (FUNC0 (T) && !transaction_interrupting_signal) {
    if (FUNC1 ()) {
      return 0;
    }
    struct timespec t;
    t.tv_sec  = 0;
    t.tv_nsec = 50000000; /* sleep 0.05 secs */
    FUNC2 (&t, NULL);
  }
  return 0;
}