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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct RClass*) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  mrb_value owner = FUNC4(mrb, self, FUNC3(mrb, "@owner"));
  mrb_value klass = FUNC4(mrb, self, FUNC3(mrb, "@klass"));
  mrb_value name = FUNC4(mrb, self, FUNC3(mrb, "@name"));
  mrb_value str = FUNC9(mrb, "#<");
  struct RClass *rklass;

  FUNC6(mrb, str, FUNC5(mrb, self));
  FUNC7(mrb, str, ": ");
  rklass = FUNC1(klass);
  if (FUNC1(owner) == rklass) {
    FUNC8(mrb, str, FUNC2(mrb, owner, "to_s", 0));
    FUNC7(mrb, str, "#");
    FUNC8(mrb, str, FUNC2(mrb, name, "to_s", 0));
  }
  else {
    FUNC6(mrb, str, FUNC0(mrb, rklass));
    FUNC7(mrb, str, "(");
    FUNC8(mrb, str, FUNC2(mrb, owner, "to_s", 0));
    FUNC7(mrb, str, ")#");
    FUNC8(mrb, str, FUNC2(mrb, name, "to_s", 0));
  }
  FUNC7(mrb, str, ">");
  return str;
}