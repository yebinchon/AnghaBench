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
struct vio_driver_state {int dummy; } ;
struct vdc_port {int /*<<< orphan*/  ldc_reset_timer_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAITING_FOR_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vdc_port* FUNC1 (struct vio_driver_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdc_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct vio_driver_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vio_driver_state *vio)
{
	struct vdc_port *port = FUNC1(vio);

	FUNC0(&port->ldc_reset_timer_work);
	FUNC3(vio, 0, WAITING_FOR_LINK_UP);
	FUNC2(port);
}