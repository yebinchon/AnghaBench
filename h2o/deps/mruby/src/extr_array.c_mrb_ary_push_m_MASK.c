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
struct RBasic {int dummy; } ;
struct RArray {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RArray*) ; 
 scalar_t__ FUNC1 (struct RArray*) ; 
 scalar_t__ FUNC2 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC3 (struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RArray*) ; 
 struct RArray* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RBasic*) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  mrb_value *argv;
  mrb_int len, len2, alen;
  struct RArray *a;

  FUNC8(mrb, "*!", &argv, &alen);
  a = FUNC7(self);
  FUNC6(mrb, a);
  len = FUNC1(a);
  len2 = len + alen;
  if (FUNC0(a) < len2) {
    FUNC5(mrb, a, len2);
  }
  FUNC4(FUNC2(a)+len, argv, alen);
  FUNC3(a, len2);
  FUNC9(mrb, (struct RBasic*)a);

  return self;
}