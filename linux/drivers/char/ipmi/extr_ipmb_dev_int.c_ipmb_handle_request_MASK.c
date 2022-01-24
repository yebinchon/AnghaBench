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
struct ipmb_request_elem {int /*<<< orphan*/  list; int /*<<< orphan*/  request; } ;
struct ipmb_msg {int dummy; } ;
struct ipmb_dev {int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  request_queue_len; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ REQUEST_QUEUE_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipmb_request_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipmb_dev *ipmb_dev)
{
	struct ipmb_request_elem *queue_elem;

	if (FUNC1(&ipmb_dev->request_queue_len) >=
			REQUEST_QUEUE_MAX_LEN)
		return;

	queue_elem = FUNC2(sizeof(*queue_elem), GFP_ATOMIC);
	if (!queue_elem)
		return;

	FUNC4(&queue_elem->request, &ipmb_dev->request,
		sizeof(struct ipmb_msg));
	FUNC3(&queue_elem->list, &ipmb_dev->request_queue);
	FUNC0(&ipmb_dev->request_queue_len);
	FUNC5(&ipmb_dev->wait_queue);
}