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
 scalar_t__ ARY_MAX_SIZE ; 
 scalar_t__ FUNC1 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC2 (struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 struct RArray* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct RArray* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self)
{
  struct RArray *a1 = FUNC5(self);
  struct RArray *a2;
  mrb_value *ptr;
  mrb_int blen, len1;

  FUNC6(mrb, "a", &ptr, &blen);
  if (ARY_MAX_SIZE - blen < FUNC0(a1)) {
    FUNC8(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  len1 = FUNC0(a1);
  a2 = FUNC4(mrb, len1 + blen);
  FUNC3(FUNC1(a2), FUNC1(a1), len1);
  FUNC3(FUNC1(a2) + len1, ptr, blen);
  FUNC2(a2, len1+blen);

  return FUNC7(a2);
}