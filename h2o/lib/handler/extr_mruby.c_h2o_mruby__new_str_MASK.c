#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_6__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,size_t) ; 

mrb_value FUNC3(mrb_state *mrb, const char *s, size_t len, int is_static, const char *file, int line)
{
    if (mrb->exc != NULL)
        FUNC0(mrb, "h2o_mruby_new_str:precondition failure", file, line);
    mrb_value ret = is_static ? FUNC2(mrb, s, len) : FUNC1(mrb, s, len);
    if (mrb->exc != NULL)
        FUNC0(mrb, "h2o_mruby_new_str:failed to create string", file, line);
    return ret;
}