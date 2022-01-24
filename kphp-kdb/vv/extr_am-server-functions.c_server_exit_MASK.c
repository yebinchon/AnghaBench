#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sfd; } ;
typedef  TYPE_1__ engine_t ;

/* Variables and functions */
 int SIGINT ; 
 int SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int pending_signals ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5 (engine_t *E) {
  FUNC1 (E->sfd);
  FUNC0 (E->sfd);
  FUNC2 ();
  FUNC4 (2);
  if (pending_signals & (1 << SIGTERM)) {
    FUNC3 ("Terminated by SIGTERM.\n");
  } else if (pending_signals & (1 << SIGINT)) {
    FUNC3 ("Terminated by SIGINT.\n");
  }
}