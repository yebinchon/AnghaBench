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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_int_allbits ; 
 int /*<<< orphan*/  mrb_int_anybits ; 
 int /*<<< orphan*/  mrb_int_chr ; 
 int /*<<< orphan*/  mrb_int_nobits ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4(mrb_state* mrb)
{
  struct RClass *i = FUNC3(mrb, "Integral");

  FUNC2(mrb, i, "chr", mrb_int_chr, FUNC0());
  FUNC2(mrb, i, "allbits?", mrb_int_allbits, FUNC1(1));
  FUNC2(mrb, i, "anybits?", mrb_int_anybits, FUNC1(1));
  FUNC2(mrb, i, "nobits?", mrb_int_nobits, FUNC1(1));
}