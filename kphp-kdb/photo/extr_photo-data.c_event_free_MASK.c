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
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  eq_total ; 
 long long events_memory ; 
 long long FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (event *e) {
  if (e == NULL) {
    return;
  }

  long long size = FUNC1 (e);
  events_memory -= size;

  eq_total--;
//  dbg ("event_free (addr = %p) (size = %lld)\n", e, size);
  FUNC0 (e, size);
}