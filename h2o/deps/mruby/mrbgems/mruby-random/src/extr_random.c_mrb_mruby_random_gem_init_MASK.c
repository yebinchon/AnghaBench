#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  object_class; struct RClass* kernel_module; struct RClass* array_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  mrb_ary_sample ; 
 int /*<<< orphan*/  mrb_ary_shuffle ; 
 int /*<<< orphan*/  mrb_ary_shuffle_bang ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct RClass*) ; 
 int /*<<< orphan*/  mrb_random_g_rand ; 
 int /*<<< orphan*/  mrb_random_g_srand ; 
 int /*<<< orphan*/  mrb_random_init ; 
 int /*<<< orphan*/  mrb_random_rand ; 
 int /*<<< orphan*/  mrb_random_srand ; 

void FUNC9(mrb_state *mrb)
{
  struct RClass *random;
  struct RClass *array = mrb->array_class;

  FUNC5(mrb, mrb->kernel_module, "rand", mrb_random_g_rand, FUNC0(1));
  FUNC5(mrb, mrb->kernel_module, "srand", mrb_random_g_srand, FUNC0(1));

  random = FUNC3(mrb, "Random", mrb->object_class);
  FUNC1(random, MRB_TT_DATA);
  FUNC4(mrb, random, "rand", mrb_random_g_rand, FUNC0(1));
  FUNC4(mrb, random, "srand", mrb_random_g_srand, FUNC0(1));

  FUNC5(mrb, random, "initialize", mrb_random_init, FUNC0(1));
  FUNC5(mrb, random, "rand", mrb_random_rand, FUNC0(1));
  FUNC5(mrb, random, "srand", mrb_random_srand, FUNC0(1));

  FUNC5(mrb, array, "shuffle", mrb_ary_shuffle, FUNC0(1));
  FUNC5(mrb, array, "shuffle!", mrb_ary_shuffle_bang, FUNC0(1));
  FUNC5(mrb, array, "sample", mrb_ary_sample, FUNC0(2));

  FUNC2(mrb, FUNC8(random), FUNC6(mrb, "DEFAULT"),
          FUNC7(mrb, random, 0, NULL));
}