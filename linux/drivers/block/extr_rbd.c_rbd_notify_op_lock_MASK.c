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
struct rbd_device {int dummy; } ;
struct page {int dummy; } ;
typedef  enum rbd_notify_op { ____Placeholder_rbd_notify_op } rbd_notify_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbd_device*,int,struct page***,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct page**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev,
			       enum rbd_notify_op notify_op)
{
	struct page **reply_pages;
	size_t reply_len;

	FUNC0(rbd_dev, notify_op, &reply_pages, &reply_len);
	FUNC2(reply_pages, FUNC1(0, reply_len));
}