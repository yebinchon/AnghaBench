#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  queue ;
typedef  scalar_t__ ll ;

/* Variables and functions */
 scalar_t__ ZERO_UID ; 
 int /*<<< orphan*/  alias ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

queue *FUNC1 (ll id) {
  if (id == 0) {
    id = ZERO_UID;
  }

  queue **q = (queue **)FUNC0 (&alias, id);
  //fprintf (stderr, "search %lld\n", id);
  if (q == NULL) {
    return NULL;
  }
  return *q;
}