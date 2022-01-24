#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * x; int /*<<< orphan*/ * y; } ;
typedef  TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_9__ {scalar_t__ id; int /*<<< orphan*/ * name; int /*<<< orphan*/ * extra; } ;
typedef  TYPE_2__ queue ;
typedef  scalar_t__ qtype ;

/* Variables and functions */
 scalar_t__ Q_WATCHCAT ; 
 scalar_t__ ZERO_UID ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h_queue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  str_memory ; 

inline void FUNC9 (queue *q) {
  if (q->name != NULL) {
    //fprintf (stderr, "DEL queue [%s]\n", q->name);
    shmap_pair_string_vptr a;
    a.y = NULL;
    a.x = q->name;

    FUNC8 (&h_queue, a);

    //TODO why process but not close?
    FUNC5 (q);

    qtype tp = FUNC3 (q->name);

    if (tp == Q_WATCHCAT) {
      str_memory -= FUNC1();
      FUNC2 (q->extra);
      str_memory += FUNC1();
      q->extra = NULL;
    }

    FUNC6 (q);

    str_memory -= FUNC1();
    FUNC2 (q->name);
    str_memory += FUNC1();
    q->name = NULL;

    if (q->id == 0) {
      q->id = ZERO_UID;
    }
    FUNC4 (&alias, q->id);
    FUNC0 ("del alias %lld\n", q->id);

    FUNC7 (q);
  }
}