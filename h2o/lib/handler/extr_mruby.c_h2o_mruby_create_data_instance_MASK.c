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
struct RData {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_data_type ;

/* Variables and functions */
 struct RClass* FUNC0 (int /*<<< orphan*/ ) ; 
 struct RData* FUNC1 (int /*<<< orphan*/ *,struct RClass*,void*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct RData*) ; 

mrb_value FUNC3(mrb_state *mrb, mrb_value class_obj, void *ptr, const mrb_data_type *type)
{
    struct RClass *klass = FUNC0(class_obj);
    struct RData *data = FUNC1(mrb, klass, ptr, type);
    return FUNC2(data);
}