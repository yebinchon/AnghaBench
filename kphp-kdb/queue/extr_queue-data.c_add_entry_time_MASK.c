#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; int timeout; struct TYPE_4__* next_time; struct TYPE_4__* prev_time; } ;
typedef  TYPE_1__ qkey ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__** time_st ; 

void FUNC3 (qkey *entry, int delay) {
  if (my_verbosity > 2) {
    FUNC1 (stderr, "upd timeout %s : %d\n", entry->name, entry->timeout);
  }

  qkey *f = time_st[FUNC0 (entry->timeout + FUNC2 (CLOCK_MONOTONIC) + delay)];
  qkey *y = f->prev_time;

  entry->next_time = f;
  f->prev_time = entry;

  entry->prev_time = y;
  y->next_time = entry;
}