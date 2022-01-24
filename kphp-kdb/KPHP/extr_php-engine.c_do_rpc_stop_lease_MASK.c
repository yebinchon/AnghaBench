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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ lease_state ; 
 int /*<<< orphan*/  lst_finish ; 
 scalar_t__ lst_on ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2 (void) {
  if (lease_state != lst_on) {
    return;
  }
  FUNC0 (lst_finish);
  FUNC1();
}