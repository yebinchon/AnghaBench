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
struct helper_data {char** argv; int /*<<< orphan*/  fd; int /*<<< orphan*/  buf; int /*<<< orphan*/  pre_data; int /*<<< orphan*/  (* pre_exec ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	struct helper_data *data = arg;
	char **argv = data->argv;
	int err, ret;

	if (data->pre_exec != NULL)
		(*data->pre_exec)(data->pre_data);
	err = FUNC1(data->buf, argv[0], argv);

	/* If the exec succeeds, we don't get here */
	FUNC0(ret = FUNC3(data->fd, &err, sizeof(err)));

	return 0;
}