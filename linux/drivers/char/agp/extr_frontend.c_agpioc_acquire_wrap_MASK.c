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
struct agp_file_private {int /*<<< orphan*/  access_flags; int /*<<< orphan*/  my_pid; } ;
struct agp_controller {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  agp_in_use; } ;
struct TYPE_4__ {int backend_acquired; int /*<<< orphan*/ * current_controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_FF_ALLOW_CONTROLLER ; 
 int /*<<< orphan*/  AGP_FF_IS_CONTROLLER ; 
 int /*<<< orphan*/  AGP_FF_IS_VALID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* agp_bridge ; 
 int /*<<< orphan*/  FUNC2 (struct agp_controller*) ; 
 struct agp_controller* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ agp_fe ; 
 struct agp_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct agp_controller*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct agp_file_private *priv)
{
	struct agp_controller *controller;

	FUNC0("");

	if (!(FUNC9(AGP_FF_ALLOW_CONTROLLER, &priv->access_flags)))
		return -EPERM;

	if (agp_fe.current_controller != NULL)
		return -EBUSY;

	if (!agp_bridge)
		return -ENODEV;

        if (FUNC7(&agp_bridge->agp_in_use))
                return -EBUSY;

	FUNC6(&agp_bridge->agp_in_use);

	agp_fe.backend_acquired = true;

	controller = FUNC4(priv->my_pid);

	if (controller != NULL) {
		FUNC2(controller);
	} else {
		controller = FUNC3(priv->my_pid);

		if (controller == NULL) {
			agp_fe.backend_acquired = false;
			FUNC1(agp_bridge);
			return -ENOMEM;
		}
		FUNC5(controller);
		FUNC2(controller);
	}

	FUNC8(AGP_FF_IS_CONTROLLER, &priv->access_flags);
	FUNC8(AGP_FF_IS_VALID, &priv->access_flags);
	return 0;
}