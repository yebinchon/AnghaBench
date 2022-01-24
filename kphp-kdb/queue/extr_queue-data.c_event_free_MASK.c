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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  events_cnt ; 
 int /*<<< orphan*/  events_memory ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (event *e) {
  size_t l = FUNC2 (e);

  events_cnt--;

  events_memory -= FUNC1();
  FUNC0 (e, l);
  events_memory += FUNC1();
}