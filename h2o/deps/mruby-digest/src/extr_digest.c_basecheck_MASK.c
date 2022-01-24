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
struct mrb_md {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  TYPESYM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct RClass* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, mrb_value self, struct mrb_md **mdp)
{
  struct RClass *c;
  struct mrb_md *md;
  mrb_value t;

  c = FUNC4(mrb, self);
  t = FUNC1(mrb, FUNC5(c), FUNC2(mrb, TYPESYM));
  if (FUNC3(t)) {
    FUNC6(mrb, E_NOTIMP_ERROR, "Digest::Base is an abstract class");
  }
  md = (struct mrb_md *)FUNC0(self);
  if (!md) {
    FUNC6(mrb, E_RUNTIME_ERROR, "no md found (BUG?)");
  }
  if (mdp) *mdp = md;
}