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
struct aio_connection {struct aio_connection* next; } ;
struct TYPE_2__ {struct aio_connection* first; } ;

/* Variables and functions */
 TYPE_1__ aio_list ; 
 scalar_t__ FUNC0 (struct aio_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC2 (void) {
  struct aio_connection *tmp, *tnext;
  int sum = 0;

  if (verbosity > 3) {
    FUNC1 (stderr, "check_all_aio_completions ()\n");
  }

  for (tmp = aio_list.first; tmp != (struct aio_connection *)&aio_list; tmp = tnext) {
    tnext = tmp->next;
    //fprintf (stderr, "scanning aio_connection %p,next = %p\n", tmp, tnext);
    sum += FUNC0 (tmp);
  }
  if (verbosity > 1 && sum > 0) {
    FUNC1 (stderr, "check_all_aio_completions returns %d\n", sum);
  }
  return sum;
}