#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;
struct vdc_port {TYPE_1__ vio; TYPE_2__* disk; int /*<<< orphan*/  ldc_reset_timer_work; int /*<<< orphan*/  ldc_reset_work; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vdc_port* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vdc_port*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct vdc_port*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct vio_dev *vdev)
{
	struct vdc_port *port = FUNC5(&vdev->dev);

	if (port) {
		FUNC0(port->disk->queue);

		FUNC7(&port->ldc_reset_work);
		FUNC1(&port->ldc_reset_timer_work);
		FUNC4(&port->vio.timer);

		FUNC3(port->disk);
		FUNC2(port->disk->queue);
		FUNC9(port->disk);
		port->disk = NULL;

		FUNC10(port);
		FUNC11(&port->vio);

		FUNC6(&vdev->dev, NULL);

		FUNC8(port);
	}
	return 0;
}