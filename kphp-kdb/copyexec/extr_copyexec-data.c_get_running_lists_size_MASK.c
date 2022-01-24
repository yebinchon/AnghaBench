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
 int /*<<< orphan*/  auto_running_list ; 
 int /*<<< orphan*/  child_running_list ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1 (int *child_size, int *auto_size) {
  *child_size = FUNC0 (&child_running_list);
  *auto_size = FUNC0 (&auto_running_list);
}