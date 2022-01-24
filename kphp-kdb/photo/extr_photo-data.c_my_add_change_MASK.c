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
typedef  int /*<<< orphan*/  my_dyn_object ;
struct TYPE_2__ {scalar_t__ tp; int /*<<< orphan*/  fn; int /*<<< orphan*/  f; int /*<<< orphan*/ * e; } ;
typedef  TYPE_1__ my_change ;
typedef  int /*<<< orphan*/  event ;
typedef  int /*<<< orphan*/  dyn_object ;
typedef  int /*<<< orphan*/  change ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ch_event ; 
 scalar_t__ ch_fields ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

inline int FUNC4 (dyn_object **_o, change *_c, int type_id) {
  my_dyn_object **o =  (my_dyn_object **)_o;
  my_change *c = (my_change *)_c;

  event *ne;
  if (c->tp == ch_event) {
    if (*o == NULL) {
      ne = c->e;
    } else {
      ne = FUNC2 (*o, c->e, type_id);
      FUNC1 (c->e);
    }
  } else if (c->tp == ch_fields) {
    ne = FUNC3 (*o, c->f, c->fn, type_id);
  } else {
    FUNC0 ("wtf" && 0);
  }

  if (*o != ne) {
    FUNC1 (*o);
    *o = ne;
  }
  return 0;
}