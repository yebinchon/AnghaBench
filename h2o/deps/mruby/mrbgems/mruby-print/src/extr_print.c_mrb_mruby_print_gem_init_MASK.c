#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_printstr ; 

void
FUNC2(mrb_state* mrb)
{
  struct RClass *krn;
  krn = mrb->kernel_module;
  FUNC1(mrb, krn, "__printstr__", mrb_printstr, FUNC0(1));
}