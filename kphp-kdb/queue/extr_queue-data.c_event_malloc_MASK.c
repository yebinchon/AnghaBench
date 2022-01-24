#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int data_len; int /*<<< orphan*/  created; int /*<<< orphan*/ * next; scalar_t__ ref_cnt; } ;
typedef  TYPE_1__ event ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  events_cnt ; 
 int /*<<< orphan*/  events_created ; 
 int /*<<< orphan*/  events_memory ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

event *FUNC5 (int data_len) {
  size_t l = FUNC3 (data_len);

  events_created++;
  events_cnt++;


  events_memory -= FUNC1();
  event *e = FUNC2 (l);
  events_memory += FUNC1();

  FUNC0 (e);

  e->data_len = data_len;
  e->ref_cnt = 0;
  e->next = NULL;

  e->created = FUNC4 (CLOCK_MONOTONIC);

  return e;
}