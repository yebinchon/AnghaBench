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
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ONIG_OPTION_IGNORECASE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value self) {
  OnigRegex reg;

  FUNC0(mrb, self, &mrb_onig_regexp_type, reg);
  return (FUNC3(reg) & ONIG_OPTION_IGNORECASE) ? FUNC2() : FUNC1();
}