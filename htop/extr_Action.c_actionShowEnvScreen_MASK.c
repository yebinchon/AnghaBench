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
struct TYPE_3__ {int /*<<< orphan*/  panel; } ;
typedef  TYPE_1__ State ;
typedef  int /*<<< orphan*/  Process ;
typedef  int /*<<< orphan*/  Object ;
typedef  int /*<<< orphan*/  InfoScreen ;
typedef  int Htop_Reaction ;
typedef  int /*<<< orphan*/  EnvScreen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int HTOP_OK ; 
 int HTOP_REDRAW_BAR ; 
 int HTOP_REFRESH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static Htop_Reaction FUNC6(State* st) {
   Process* p = (Process*) FUNC4(st->panel);
   if (!p) return HTOP_OK;
   EnvScreen* es = FUNC2(p);
   FUNC3((InfoScreen*)es);
   FUNC1((Object*)es);
   FUNC5();
   FUNC0();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}