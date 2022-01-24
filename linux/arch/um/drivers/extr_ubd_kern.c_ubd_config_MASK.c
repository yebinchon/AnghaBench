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
struct TYPE_2__ {int /*<<< orphan*/ * file; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char**) ; 
 TYPE_1__* ubd_devs ; 
 int /*<<< orphan*/  ubd_lock ; 
 int FUNC5 (char*,int*,char**) ; 

__attribute__((used)) static int FUNC6(char *str, char **error_out)
{
	int n, ret;

	/* This string is possibly broken up and stored, so it's only
	 * freed if ubd_setup_common fails, or if only general options
	 * were set.
	 */
	str = FUNC1(str, GFP_KERNEL);
	if (str == NULL) {
		*error_out = "Failed to allocate memory";
		return -ENOMEM;
	}

	ret = FUNC5(str, &n, error_out);
	if (ret)
		goto err_free;

	if (n == -1) {
		ret = 0;
		goto err_free;
	}

	FUNC2(&ubd_lock);
	ret = FUNC4(n, error_out);
	if (ret)
		ubd_devs[n].file = NULL;
	FUNC3(&ubd_lock);

out:
	return ret;

err_free:
	FUNC0(str);
	goto out;
}