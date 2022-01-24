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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ active_gdns ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ gdns_thread ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  /* REVERSE DNS THREAD */
  FUNC3 (&gdns_thread.mutex);

  /* kill dns pthread */
  active_gdns = 0;
  /* clear holder structure */
  FUNC0 (&holder);
  /* clear reverse dns queue */
  FUNC2 ();
  /* clear the whole storage */
  FUNC1 ();

  FUNC4 (&gdns_thread.mutex);
}