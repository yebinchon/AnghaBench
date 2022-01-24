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
typedef  int /*<<< orphan*/  TraceScreen ;
struct TYPE_3__ {int /*<<< orphan*/  panel; } ;
typedef  TYPE_1__ State ;
typedef  int /*<<< orphan*/  Process ;
typedef  int /*<<< orphan*/  Object ;
typedef  int /*<<< orphan*/  InfoScreen ;
typedef  int Htop_Reaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HTOP_OK ; 
 int HTOP_REDRAW_BAR ; 
 int HTOP_REFRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static Htop_Reaction FUNC7(State* st) {
   Process* p = (Process*) FUNC2(st->panel);
   if (!p) return HTOP_OK;
   TraceScreen* ts = FUNC5(p);
   bool ok = FUNC4(ts);
   if (ok) {
      FUNC1((InfoScreen*)ts);
   }
   FUNC3((Object*)ts);
   FUNC6();
   FUNC0();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}