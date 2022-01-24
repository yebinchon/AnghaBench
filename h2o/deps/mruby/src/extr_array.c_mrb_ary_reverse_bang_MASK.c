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
typedef  void* mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int FUNC0 (struct RArray*) ; 
 void** FUNC1 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RArray*) ; 
 struct RArray* FUNC3 (void*) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value self)
{
  struct RArray *a = FUNC3(self);
  mrb_int len = FUNC0(a);

  if (len > 1) {
    mrb_value *p1, *p2;

    FUNC2(mrb, a);
    p1 = FUNC1(a);
    p2 = p1 + len - 1;

    while (p1 < p2) {
      mrb_value tmp = *p1;
      *p1++ = *p2;
      *p2-- = tmp;
    }
  }
  return self;
}