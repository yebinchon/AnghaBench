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
struct TYPE_4__ {int /*<<< orphan*/  no_tab_scroll; } ;
struct TYPE_3__ {int current; int dash; } ;

/* Variables and functions */
 int DASH_COLLAPSED ; 
 TYPE_2__ conf ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 TYPE_1__ gscroll ; 

__attribute__((used)) static int
FUNC2 (void)
{
  int prev = -1;

  if ((prev = FUNC1 (gscroll.current)) == -1)
    return 1;

  gscroll.current = prev;
  if (!conf.no_tab_scroll)
    gscroll.dash = FUNC0 (gscroll.current) * DASH_COLLAPSED;

  return 0;
}