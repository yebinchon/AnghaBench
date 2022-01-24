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
typedef  int /*<<< orphan*/  trp_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** heap ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ heap_size ; 

trp_node *FUNC2 (void) {
  FUNC0 (heap_size > 0);

  trp_node *tmp = heap[1];
  heap[1] = heap[heap_size--];
  FUNC1();

  return tmp;
}