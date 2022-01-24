#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  not_empty; } ;

/* Variables and functions */
 int /*<<< orphan*/  gdns_queue ; 
 TYPE_1__ gdns_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6 (char *addr)
{
  FUNC4 (&gdns_thread.mutex);
  /* queue is not full and the IP address is not in the queue */
  if (!FUNC2 (gdns_queue) && !FUNC1 (gdns_queue, addr)) {
    /* add the IP to the queue */
    FUNC0 (gdns_queue, addr);
    FUNC3 (&gdns_thread.not_empty);
  }
  FUNC5 (&gdns_thread.mutex);
}