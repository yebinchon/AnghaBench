#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_12__ {size_t current; scalar_t__ expanded; } ;
struct TYPE_11__ {TYPE_1__* module; int /*<<< orphan*/  total_alloc; } ;
struct TYPE_10__ {int idx; int /*<<< orphan*/  ht_size; } ;
struct TYPE_9__ {int alloc_data; scalar_t__ dash_size; scalar_t__ pos_y; scalar_t__ idx_data; int /*<<< orphan*/  ht_size; int /*<<< orphan*/  desc; int /*<<< orphan*/  head; } ;
typedef  size_t GModule ;

/* Variables and functions */
 scalar_t__ DASH_COLLAPSED ; 
 scalar_t__ DASH_EXPANDED ; 
 TYPE_3__* dash ; 
 TYPE_7__ gdns_thread ; 
 int FUNC0 () ; 
 TYPE_4__ gscroll ; 
 TYPE_2__* holder ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (GModule module, int col_data)
{
  int size = 0, max_choices = FUNC0 ();

  dash->module[module].head = FUNC3 (module);
  dash->module[module].desc = FUNC2 (module);

  size = holder[module].idx;
  if (gscroll.expanded && module == gscroll.current) {
    size = size > max_choices ? max_choices : holder[module].idx;
  } else {
    size = holder[module].idx > col_data ? col_data : holder[module].idx;
  }

  dash->module[module].alloc_data = size;       /* data allocated  */
  dash->module[module].ht_size = holder[module].ht_size;        /* hash table size */
  dash->module[module].idx_data = 0;
  dash->module[module].pos_y = 0;

  if (gscroll.expanded && module == gscroll.current)
    dash->module[module].dash_size = DASH_EXPANDED;
  else
    dash->module[module].dash_size = DASH_COLLAPSED;
  dash->total_alloc += dash->module[module].dash_size;

  FUNC4 (&gdns_thread.mutex);
  FUNC1 (&holder[module], dash, module, &gscroll);
  FUNC5 (&gdns_thread.mutex);
}