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
struct jv_parser {int stackpos; int stacklen; int /*<<< orphan*/ * stack; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct jv_parser* p, jv v) {
  FUNC0(p->stackpos <= p->stacklen);
  if (p->stackpos == p->stacklen) {
    p->stacklen = p->stacklen * 2 + 10;
    p->stack = FUNC1(p->stack, p->stacklen * sizeof(jv));
  }
  FUNC0(p->stackpos < p->stacklen);
  p->stack[p->stackpos++] = v;
}