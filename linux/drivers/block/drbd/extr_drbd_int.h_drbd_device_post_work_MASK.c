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
struct drbd_work_queue {int /*<<< orphan*/  q_wait; } ;
struct drbd_device {int /*<<< orphan*/  flags; } ;
struct drbd_connection {int /*<<< orphan*/  flags; struct drbd_work_queue sender_work; } ;
struct TYPE_2__ {struct drbd_connection* connection; } ;

/* Variables and functions */
 int DEVICE_WORK_PENDING ; 
 TYPE_1__* FUNC0 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct drbd_device *device, int work_bit)
{
	if (!FUNC1(work_bit, &device->flags)) {
		struct drbd_connection *connection =
			FUNC0(device)->connection;
		struct drbd_work_queue *q = &connection->sender_work;
		if (!FUNC1(DEVICE_WORK_PENDING, &connection->flags))
			FUNC2(&q->q_wait);
	}
}