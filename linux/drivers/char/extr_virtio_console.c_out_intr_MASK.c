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
struct virtqueue {TYPE_1__* vdev; } ;
struct port {int /*<<< orphan*/  waitqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 struct port* FUNC0 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct virtqueue *vq)
{
	struct port *port;

	port = FUNC0(vq->vdev->priv, vq);
	if (!port) {
		FUNC1(vq, false);
		return;
	}

	FUNC2(&port->waitqueue);
}