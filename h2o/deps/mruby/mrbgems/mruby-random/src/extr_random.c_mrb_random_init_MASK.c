#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  seed; int /*<<< orphan*/  has_seed; scalar_t__ mti; } ;
typedef  TYPE_1__ mt_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ N ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt_state_type ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  mrb_value seed;
  mt_state *t;

  seed = FUNC1(mrb);

  /* avoid memory leaks */
  t = (mt_state*)FUNC0(self);
  if (t) {
    FUNC6(mrb, t);
  }
  FUNC3(self, NULL, &mt_state_type);

  t = (mt_state *)FUNC7(mrb, sizeof(mt_state));
  t->mti = N + 1;

  seed = FUNC9(mrb, t, seed);
  if (FUNC8(seed)) {
    t->has_seed = FALSE;
  }
  else {
    FUNC2(FUNC5(seed));
    t->has_seed = TRUE;
    t->seed = FUNC4(seed);
  }

  FUNC3(self, t, &mt_state_type);

  return self;
}