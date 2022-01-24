#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  h2o_token_t ;
struct TYPE_3__ {int /*<<< orphan*/  constants; } ;
typedef  TYPE_1__ h2o_mruby_shared_context_t ;

/* Variables and functions */
 int H2O_MAX_TOKENS ; 
 int /*<<< orphan*/  const* h2o__tokens ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

mrb_value FUNC1(h2o_mruby_shared_context_t *shared, const h2o_token_t *token)
{
    return FUNC0(shared->constants, token - h2o__tokens + H2O_MAX_TOKENS);
}