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
typedef  int /*<<< orphan*/  field ;
struct TYPE_6__ {scalar_t__ tn; } ;
typedef  TYPE_1__ event_dump ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

event *FUNC6 (event *e, field *f, int fn, int type_id) {
  if (fn == 0) {
    return e;
  }

  FUNC5();

  event_dump d;
  FUNC4 (&d, type_id);

  int i;
  for (i = 0; i < fn; i++) {
    if (FUNC3 (&d, &f[i], type_id, e) < 0) {
      return NULL;
    }
  }
//  dbg ("event_update_php: (tn = %d) (fn = %d)\n", d.tn, fn);
  if (d.tn) {
    FUNC0 (FUNC2 (&d, e, type_id, NULL) > -1);

    e = FUNC1 (&d);
    FUNC0 (e != NULL);
  }
  return e;
}