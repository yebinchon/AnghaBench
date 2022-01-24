#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int i; long long l; } ;
struct tl_scheme_object {TYPE_1__ u; } ;

/* Variables and functions */
 long long INT_MAX ; 
 long long INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct tl_scheme_object*) ; 
 struct tl_scheme_object* FUNC1 (struct tl_scheme_object*,struct tl_scheme_object*) ; 
 struct tl_scheme_object* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlso_int ; 
 int /*<<< orphan*/  tlso_long ; 

__attribute__((used)) static struct tl_scheme_object *FUNC3 (long long r, struct tl_scheme_object *stack) {
  struct tl_scheme_object *O;
  if (INT_MIN <= r && r <= INT_MAX) {
    O = FUNC2 (tlso_int);
    O->u.i = (int) r;
  } else {
    O = FUNC2 (tlso_long);
    O->u.l = r;
  }
  stack = FUNC1 (O, stack);
  FUNC0 (stack);
  return stack;
}