#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_3__ {int num_regs; scalar_t__* beg; scalar_t__* end; } ;
typedef  TYPE_1__ OnigRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ ONIG_REGION_NOTPOS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  mrb_onig_region_type ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state* mrb, mrb_value self) {
  mrb_value cache = FUNC6(mrb, self, FUNC5(mrb, "cache"));
  if(!FUNC7(cache)) {
    return cache;
  }

  mrb_value str = FUNC6(mrb, self, FUNC5(mrb, "string"));
  OnigRegion* reg;
  FUNC0(mrb, self, &mrb_onig_region_type, reg);

  mrb_value ret = FUNC1(mrb, reg->num_regs);
  int i, ai = FUNC4(mrb);
  for(i = 0; i < reg->num_regs; ++i) {
    if(reg->beg[i] == ONIG_REGION_NOTPOS) {
      FUNC2(mrb, ret, FUNC8());
    } else {
      FUNC2(mrb, ret, FUNC9(mrb, str, reg->beg[i], reg->end[i] - reg->beg[i]));
    }
    FUNC3(mrb, ai);
  }
  return ret;
}