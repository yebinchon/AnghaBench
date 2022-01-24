#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int idx; int bg; int /*<<< orphan*/  fg; int /*<<< orphan*/  item; struct TYPE_6__* pair; } ;
typedef  TYPE_1__ GColors ;
typedef  TYPE_1__ GColorPair ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_NORMAL ; 
 int /*<<< orphan*/  COLOR_WHITE ; 
 void* color_list ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 void* pair_list ; 

void
FUNC4 (void)
{
  GColorPair *pair = FUNC2 ();
  GColors *color = FUNC3 ();

  pair->idx = 1;
  pair->fg = COLOR_WHITE;
  pair->bg = -1;

  color->pair = pair;
  color->item = COLOR_NORMAL;

  pair_list = FUNC1 (pair);
  color_list = FUNC1 (color);

  FUNC0 (pair->idx, pair->fg, pair->bg);
}