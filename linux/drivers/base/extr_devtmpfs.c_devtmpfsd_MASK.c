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
struct req {int /*<<< orphan*/  done; int /*<<< orphan*/  dev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; int /*<<< orphan*/  err; struct req* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int /*<<< orphan*/  MS_SILENT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_lock ; 
 struct req* requests ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  setup_done ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void *p)
{
	int *err = p;
	*err = FUNC6(CLONE_NEWNS);
	if (*err)
		goto out;
	*err = FUNC5("devtmpfs", "/", "devtmpfs", MS_SILENT, NULL);
	if (*err)
		goto out;
	FUNC3("/.."); /* will traverse into overmounted root */
	FUNC4(".");
	FUNC1(&setup_done);
	while (1) {
		FUNC8(&req_lock);
		while (requests) {
			struct req *req = requests;
			requests = NULL;
			FUNC9(&req_lock);
			while (req) {
				struct req *next = req->next;
				req->err = FUNC2(req->name, req->mode,
						  req->uid, req->gid, req->dev);
				FUNC1(&req->done);
				req = next;
			}
			FUNC8(&req_lock);
		}
		FUNC0(TASK_INTERRUPTIBLE);
		FUNC9(&req_lock);
		FUNC7();
	}
	return 0;
out:
	FUNC1(&setup_done);
	return *err;
}