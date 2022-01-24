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
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 long long FUNC2 (int /*<<< orphan*/ ) ; 
 long long last_transaction_id ; 
 int FUNC3 () ; 

long long FUNC4 (void) {
  long long x = (1LL << 32) * FUNC2 (CLOCK_REALTIME);
  if (x <= last_transaction_id) {
    x = last_transaction_id + (FUNC3() % 239) + 1;
  }
  FUNC0 (!FUNC1 (x));
  return (last_transaction_id = x);
}