#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  no_tab_scroll; } ;
struct TYPE_6__ {int dash; } ;
struct TYPE_5__ {int /*<<< orphan*/  current; } ;
typedef  TYPE_1__ GScroll ;
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 int DASH_COLLAPSED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ gscroll ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (GScroll * scrll, GModule module)
{
  if (FUNC2 (module) == -1) {
    FUNC1 (module);
    return;
  }

  /* scroll to panel */
  if (!conf.no_tab_scroll)
    gscroll.dash = FUNC2 (module) * DASH_COLLAPSED;

  /* reset expanded module */
  FUNC0 ();
  scrll->current = module;
  FUNC3 ();
}