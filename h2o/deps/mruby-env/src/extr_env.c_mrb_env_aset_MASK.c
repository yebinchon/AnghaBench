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

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  MRB_TT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  mrb_value name, value;
  const char *cname, *cvalue;

  FUNC1(mrb, "So", &name, &value);
  cname = FUNC4(mrb, &name);

  if (FUNC2(value)) {
    if (FUNC6(cname) != 0) {
      FUNC3(mrb, E_RUNTIME_ERROR, "can't delete environment variable");
    }
  } else {
    FUNC0(mrb, value, MRB_TT_STRING, "String", "to_str");
    cvalue = FUNC4(mrb, &value);
    if (FUNC5(cname, cvalue, 1) != 0) {
      FUNC3(mrb, E_RUNTIME_ERROR, "can't change environment variable");
    }
  }
  return value;
}