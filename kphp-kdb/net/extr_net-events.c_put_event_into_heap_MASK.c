#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fd; int in_queue; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 TYPE_1__* Events ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__** ev_heap ; 
 int ev_heap_size ; 
 int FUNC2 (TYPE_1__*,int) ; 

int FUNC3 (event_t *ev) {
  int v = ev->fd, i, j;
  event_t *x;
  FUNC0 (v >= 0 && v < MAX_EVENTS && Events + v == ev);
  i = ev->in_queue ? FUNC2 (ev, 1) : ++ev_heap_size;
  FUNC0 (i <= MAX_EVENTS);
  while (i > 1) {
    j = (i >> 1);
    x = ev_heap[j];
    if (FUNC1(x,ev) <= 0) break;
    ev_heap[i] = x;
    x->in_queue = i;
    i = j;
  }
  ev_heap[i] = ev;
  ev->in_queue = i;
  return i;
}