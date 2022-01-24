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
struct req {int mode; int err; int /*<<< orphan*/  done; struct req* next; struct device* dev; int /*<<< orphan*/  name; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  req_lock ; 
 struct req* requests ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct device *dev)
{
	const char *tmp = NULL;
	struct req req;

	if (!thread)
		return 0;

	req.mode = 0;
	req.uid = GLOBAL_ROOT_UID;
	req.gid = GLOBAL_ROOT_GID;
	req.name = FUNC0(dev, &req.mode, &req.uid, &req.gid, &tmp);
	if (!req.name)
		return -ENOMEM;

	if (req.mode == 0)
		req.mode = 0600;
	if (FUNC2(dev))
		req.mode |= S_IFBLK;
	else
		req.mode |= S_IFCHR;

	req.dev = dev;

	FUNC1(&req.done);

	FUNC4(&req_lock);
	req.next = requests;
	requests = &req;
	FUNC5(&req_lock);

	FUNC7(thread);
	FUNC6(&req.done);

	FUNC3(tmp);

	return req.err;
}