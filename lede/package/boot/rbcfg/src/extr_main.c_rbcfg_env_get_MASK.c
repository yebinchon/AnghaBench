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
struct rbcfg_env {int type; } ;

/* Variables and functions */
#define  RBCFG_ENV_TYPE_U32 128 
 char* FUNC0 (struct rbcfg_env const*) ; 

__attribute__((used)) static const char *
FUNC1(const struct rbcfg_env *env)
{
	const char *ret = NULL;

	switch (env->type) {
	case RBCFG_ENV_TYPE_U32:
		ret = FUNC0(env);
		break;
	}

	return ret;
}