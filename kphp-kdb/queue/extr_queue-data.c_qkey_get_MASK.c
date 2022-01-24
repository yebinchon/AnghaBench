#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* x; TYPE_2__* y; } ;
typedef  TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_10__ {char* name; } ;
typedef  TYPE_2__ qkey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  h_qkey ; 
 TYPE_2__* FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  str_memory ; 
 int verbosity ; 

qkey *FUNC7 (char *name, int force) {
  shmap_pair_string_vptr a, *b;
  a.y = NULL;
  a.x = name;

  qkey *k = NULL;
  if (force) {
    b = FUNC5 (&h_qkey, a);
    if (b->y == NULL) {
      str_memory -= FUNC1();
      b->x = FUNC2 (b->x);
      str_memory += FUNC1();

      k = b->y = FUNC4();
      k->name = b->x;
    } else if (force == 1) {
      FUNC0 ("Keys collision" && 0);
    } else {
      k = b->y;
    }

    if (verbosity > 2) {
      FUNC3 (stderr, "Key created : [%s]\n", name);
    }
    // dbg ("Key created %p : [%s]:%p\n", k, k->name, k->name);
  } else {
//    fprintf (stderr, "get Key %p : ", name);
//    fprintf (stderr, "[%s]\n", name);
    b = FUNC6 (&h_qkey, a);
    if (b != NULL) {
      k = b->y;
    }
  }

  return k;
}