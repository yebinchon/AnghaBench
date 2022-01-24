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
struct arglist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct arglist* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct arglist*) ; 
 int FUNC3 (char*,int*,char**,char**) ; 

__attribute__((used)) static int FUNC4(char *str, char **error_out)
{
	int err, n;
	char *params;
	struct arglist *parsed;

	err = FUNC3(str, &n, &params, error_out);
	if (err != 0)
		return err;

	/* This string is broken up and the pieces used by the underlying
	 * driver. We should copy it to make sure things do not go wrong
	 * later.
	 */

	params = FUNC0(params, GFP_KERNEL);
	if (params == NULL) {
		*error_out = "vector_config failed to strdup string";
		return -ENOMEM;
	}

	parsed = FUNC1(params);

	if (parsed == NULL) {
		*error_out = "vector_config failed to parse parameters";
		return -EINVAL;
	}

	FUNC2(n, parsed);
	return 0;
}