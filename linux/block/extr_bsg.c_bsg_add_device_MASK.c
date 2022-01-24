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
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;
struct request_queue {TYPE_1__ bsg_dev; } ;
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {int dummy; } ;
struct bsg_device {int /*<<< orphan*/  max_queue; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  ref_count; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 struct bsg_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 struct bsg_device* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct bsg_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsg_mutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct bsg_device *FUNC13(struct inode *inode,
					 struct request_queue *rq,
					 struct file *file)
{
	struct bsg_device *bd;
	unsigned char buf[32];

	FUNC10(&bsg_mutex);

	if (!FUNC1(rq))
		return FUNC0(-ENXIO);

	bd = FUNC3();
	if (!bd) {
		FUNC2(rq);
		return FUNC0(-ENOMEM);
	}

	bd->queue = rq;

	FUNC11(&bd->ref_count, 1);
	FUNC8(&bd->dev_list, FUNC5(FUNC9(inode)));

	FUNC12(bd->name, FUNC6(rq->bsg_dev.class_dev), sizeof(bd->name) - 1);
	FUNC4(bd, "bound to <%s>, max queue %d\n",
		FUNC7(buf, inode->i_rdev), bd->max_queue);

	return bd;
}