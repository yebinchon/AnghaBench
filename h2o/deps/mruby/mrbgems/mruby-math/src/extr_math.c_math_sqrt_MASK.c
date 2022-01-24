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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  double mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,double*) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value obj)
{
  mrb_float x;

  FUNC2(mrb, "f", &x);
  if (x < 0.0) {
    FUNC0(mrb, "sqrt");
  }
  x = FUNC3(x);

  return FUNC1(mrb, x);
}