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
typedef  int mrb_int ;

/* Variables and functions */
 int FUNC0 (struct RArray*) ; 
 int ARY_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC2 (struct RArray*,int) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct RArray* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct RArray* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  struct RArray *a1 = FUNC6(self);
  struct RArray *a2;
  mrb_value *ptr;
  mrb_int times, len1;

  FUNC7(mrb, "i", &times);
  if (times < 0) {
    FUNC9(mrb, E_ARGUMENT_ERROR, "negative argument");
  }
  if (times == 0) return FUNC5(mrb);
  if (ARY_MAX_SIZE / times < FUNC0(a1)) {
    FUNC9(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  len1 = FUNC0(a1);
  a2 = FUNC4(mrb, len1 * times);
  FUNC2(a2, len1 * times);
  ptr = FUNC1(a2);
  while (times--) {
    FUNC3(ptr, FUNC1(a1), len1);
    ptr += len1;
  }

  return FUNC8(a2);
}