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
struct diff_node {int x; struct diff_node* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTRSIZE ; 
 struct diff_node* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct diff_node *FUNC1 (int x, struct diff_node *prev) {
  struct diff_node *p = FUNC0 (sizeof (struct diff_node), PTRSIZE);
  if (p == NULL) { return p; }
  p->x = x;
  p->prev = prev;
  return p;
}