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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* history_filename ; 
 int /*<<< orphan*/ * log_file ; 
 int /*<<< orphan*/  sfd ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void FUNC4 (void) {
  if (history_filename[0]) {
    FUNC3 (history_filename);
  }
  FUNC1 (sfd);
  FUNC0 (sfd);

  if (log_file) {
    FUNC2 (log_file);
    log_file = NULL;
  }
}