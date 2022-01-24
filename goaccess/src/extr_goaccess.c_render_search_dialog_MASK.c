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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gdns_thread ; 
 int /*<<< orphan*/  gscroll ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  main_win ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (int search)
{
  if (FUNC5 (main_win, &gscroll))
    return;

  FUNC3 (&gdns_thread.mutex);
  search = FUNC2 (holder, &gscroll);
  FUNC4 (&gdns_thread.mutex);
  if (search != 0)
    return;

  FUNC1 (dash);
  FUNC0 ();
  FUNC6 ();
}