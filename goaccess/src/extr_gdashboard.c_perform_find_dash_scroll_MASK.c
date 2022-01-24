#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int next_idx; size_t module; } ;
struct TYPE_7__ {size_t current; int dash; int expanded; TYPE_1__* module; } ;
struct TYPE_6__ {int scroll; int offset; } ;
typedef  TYPE_2__ GScroll ;
typedef  size_t GModule ;

/* Variables and functions */
 int DASH_COLLAPSED ; 
 TYPE_5__ find_t ; 
 int FUNC0 (size_t) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3 (GScroll * gscroll, GModule module)
{
  int *scrll, *offset;
  int exp_size = FUNC1 ();

  /* reset gscroll offsets if we are changing module */
  if (gscroll->current != module)
    FUNC2 (gscroll);

  scrll = &gscroll->module[module].scroll;
  offset = &gscroll->module[module].offset;

  (*scrll) = find_t.next_idx;
  if (*scrll >= exp_size && *scrll >= *offset + exp_size)
    (*offset) = (*scrll) < exp_size - 1 ? 0 : (*scrll) - exp_size + 1;

  gscroll->current = module;
  gscroll->dash = FUNC0 (module) * DASH_COLLAPSED;
  gscroll->expanded = 1;
  find_t.module = module;
}