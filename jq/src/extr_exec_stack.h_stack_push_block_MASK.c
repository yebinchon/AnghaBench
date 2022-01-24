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
struct stack {scalar_t__ limit; scalar_t__ bound; } ;
typedef  scalar_t__ stack_ptr ;

/* Variables and functions */
 int ALIGNMENT ; 
 int FUNC0 (size_t) ; 
 scalar_t__* FUNC1 (struct stack*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*,int) ; 

__attribute__((used)) static stack_ptr FUNC3(struct stack* s, stack_ptr p, size_t sz) {
  int alloc_sz = FUNC0(sz) + ALIGNMENT;
  stack_ptr r = s->limit - alloc_sz;
  if (r < s->bound) {
    FUNC2(s, alloc_sz);
  }
  s->limit = r;
  *FUNC1(s, r) = p;
  return r;
}