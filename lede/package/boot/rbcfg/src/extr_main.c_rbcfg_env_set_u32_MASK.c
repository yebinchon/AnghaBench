#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  u32; } ;
struct rbcfg_value {TYPE_1__ val; } ;
struct rbcfg_env {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int RB_ERR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  rbcfg_ctx ; 
 struct rbcfg_value* FUNC1 (struct rbcfg_env const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3(const struct rbcfg_env *env, const char *data)
{
	const struct rbcfg_value *v;
	int err;

	v = FUNC1(env, data);
	if (v == NULL) {
		FUNC0(stderr, "invalid value '%s'\n", data);
		return RB_ERR_INVALID;
	}

	err = FUNC2(rbcfg_ctx, env->id, v->val.u32);
	return err;
}