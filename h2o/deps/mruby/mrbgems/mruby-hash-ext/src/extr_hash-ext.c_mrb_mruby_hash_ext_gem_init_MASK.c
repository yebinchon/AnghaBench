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
struct TYPE_4__ {struct RClass* hash_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  hash_slice ; 
 int /*<<< orphan*/  hash_values_at ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(mrb_state *mrb)
{
  struct RClass *h;

  h = mrb->hash_class;
  FUNC1(mrb, h, "values_at", hash_values_at, FUNC0());
  FUNC1(mrb, h, "slice",     hash_slice, FUNC0());
}