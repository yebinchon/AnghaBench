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
struct pseries_hp_errorlog {int dummy; } ;
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (char**,struct pseries_hp_errorlog*) ; 
 int FUNC1 (char**,struct pseries_hp_errorlog*) ; 
 int FUNC2 (char**,struct pseries_hp_errorlog*) ; 
 int FUNC3 (struct pseries_hp_errorlog*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static ssize_t FUNC8(struct class *class, struct class_attribute *attr,
			   const char *buf, size_t count)
{
	struct pseries_hp_errorlog hp_elog;
	char *argbuf;
	char *args;
	int rc;

	args = argbuf = FUNC5(buf, GFP_KERNEL);
	if (!argbuf) {
		FUNC7("Could not allocate resources for DLPAR operation\n");
		FUNC4(argbuf);
		return -ENOMEM;
	}

	/*
	 * Parse out the request from the user, this will be in the form:
	 * <resource> <action> <id_type> <id>
	 */
	rc = FUNC2(&args, &hp_elog);
	if (rc)
		goto dlpar_store_out;

	rc = FUNC0(&args, &hp_elog);
	if (rc)
		goto dlpar_store_out;

	rc = FUNC1(&args, &hp_elog);
	if (rc)
		goto dlpar_store_out;

	rc = FUNC3(&hp_elog);

dlpar_store_out:
	FUNC4(argbuf);

	if (rc)
		FUNC6("Could not handle DLPAR request \"%s\"\n", buf);

	return rc ? rc : count;
}