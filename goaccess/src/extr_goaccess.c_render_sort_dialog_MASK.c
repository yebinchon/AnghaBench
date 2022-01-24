#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  not_empty; } ;
struct TYPE_3__ {size_t current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ gdns_thread ; 
 TYPE_1__ gscroll ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_win ; 
 int /*<<< orphan*/ * module_sort ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (void)
{
  FUNC4 (main_win, gscroll.current, &module_sort[gscroll.current]);

  FUNC6 (&gdns_thread.mutex);
  FUNC3 (&holder);
  FUNC5 (&gdns_thread.not_empty);
  FUNC7 (&gdns_thread.mutex);

  FUNC2 (dash);
  FUNC1 ();
  FUNC0 ();
  FUNC8 ();
}