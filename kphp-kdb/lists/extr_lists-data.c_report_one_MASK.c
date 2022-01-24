#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* o_tree; int /*<<< orphan*/  metafile_index; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_6__ {scalar_t__ delta; } ;

/* Variables and functions */
 TYPE_2__ DummyList ; 
 scalar_t__ M_tot_entries ; 
 scalar_t__ metafile_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2 (list_t *L) {
  if (metafile_mode) {
    if (L == &DummyList || L->o_tree->delta == 0) {
      return 1;
    } else {
      FUNC0 (L->metafile_index, -1);
      FUNC1 (L);

      return (M_tot_entries + L->o_tree->delta) > 0;
    }
  } else {
    return 1;
  }
}