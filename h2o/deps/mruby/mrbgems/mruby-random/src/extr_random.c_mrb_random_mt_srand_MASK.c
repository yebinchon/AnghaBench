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
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mt_state *t, mrb_value seed)
{
  if (FUNC2(seed)) {
    seed = FUNC1((mrb_int)(FUNC5(NULL) + FUNC3(t)));
    if (FUNC0(seed) < 0) {
      seed = FUNC1(0 - FUNC0(seed));
    }
  }

  FUNC4(t, (unsigned) FUNC0(seed));

  return seed;
}