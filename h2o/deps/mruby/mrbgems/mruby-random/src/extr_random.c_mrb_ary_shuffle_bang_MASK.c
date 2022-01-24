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
typedef  int /*<<< orphan*/  mt_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt_state_type ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value ary)
{
  mrb_int i;
  mt_state *random = NULL;

  if (FUNC0(ary) > 1) {
    FUNC7(mrb, "|d", &random, &mt_state_type);

    if (random == NULL) {
      random = FUNC2(mrb);
    }
    FUNC9(mrb, random);

    FUNC3(mrb, FUNC4(ary));

    for (i = FUNC0(ary) - 1; i > 0; i--)  {
      mrb_int j;
      mrb_value *ptr = FUNC1(ary);
      mrb_value tmp;


      j = FUNC5(FUNC8(mrb, random, FUNC6(FUNC0(ary))));

      tmp = ptr[i];
      ptr[i] = ptr[j];
      ptr[j] = tmp;
    }
  }

  return ary;
}