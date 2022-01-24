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
 struct RClass* FUNC0 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC4(mrb_state *mrb, const char *func)
{
  struct RClass *math = FUNC1(mrb, "Math");
  struct RClass *domainerror = FUNC0(mrb, math, "DomainError");
  mrb_value str = FUNC3(mrb, func);
  FUNC2(mrb, domainerror, "Numerical argument is out of domain - %S", str);
}