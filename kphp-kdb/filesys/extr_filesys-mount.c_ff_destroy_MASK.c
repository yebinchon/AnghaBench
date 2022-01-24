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
 int /*<<< orphan*/  ff_mutex ; 
 int /*<<< orphan*/  ff_server_thread ; 
 int ff_stop_server ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void FUNC5 (void *arg) {
  FUNC2 (&ff_mutex);
  FUNC4 (2, "ff_destroy ()\n");
  ff_stop_server = 1;
  FUNC3 (&ff_mutex);
  FUNC0 (ff_server_thread, NULL);
  FUNC1 (&ff_mutex);
}