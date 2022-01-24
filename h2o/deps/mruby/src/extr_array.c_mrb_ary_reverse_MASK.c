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
struct RArray {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RArray*) ; 
 int /*<<< orphan*/ * FUNC1 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC2 (struct RArray*,scalar_t__) ; 
 struct RArray* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct RArray* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct RArray*) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  struct RArray *a = FUNC4(self), *b = FUNC3(mrb, FUNC0(a));
  mrb_int len = FUNC0(a);

  if (len > 0) {
    mrb_value *p1, *p2, *e;

    p1 = FUNC1(a);
    e  = p1 + len;
    p2 = FUNC1(b) + len - 1;
    while (p1 < e) {
      *p2-- = *p1++;
    }
    FUNC2(b, len);
  }
  return FUNC5(b);
}