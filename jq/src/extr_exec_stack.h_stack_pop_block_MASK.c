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
struct stack {scalar_t__ limit; } ;
typedef  scalar_t__ stack_ptr ;

/* Variables and functions */
 int ALIGNMENT ; 
 int FUNC0 (size_t) ; 
 scalar_t__* FUNC1 (struct stack*,scalar_t__) ; 

__attribute__((used)) static stack_ptr FUNC2(struct stack* s, stack_ptr p, size_t sz) {
  stack_ptr r = *FUNC1(s, p);
  if (p == s->limit) {
    int alloc_sz = FUNC0(sz) + ALIGNMENT;
    s->limit += alloc_sz;
  }
  return r;
}