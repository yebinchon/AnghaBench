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
struct csym_arg {int /*<<< orphan*/  sym; struct RClass* c; } ;
struct RClass {scalar_t__ tt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 struct RClass* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(mrb_state *mrb, mrb_sym sym, mrb_value v, void *p)
{
  struct csym_arg *a = (struct csym_arg*)p;
  struct RClass *c = a->c;

  if (FUNC1(v) == c->tt && FUNC0(v) == c) {
    a->sym = sym;
    return 1;     /* stop iteration */
  }
  return 0;
}