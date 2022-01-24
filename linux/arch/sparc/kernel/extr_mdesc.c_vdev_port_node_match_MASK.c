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
struct TYPE_2__ {scalar_t__ id; scalar_t__ parent_cfg_hdl; int /*<<< orphan*/  name; } ;
union md_node_info {TYPE_1__ vdev_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDESC_MAX_STR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(union md_node_info *a_node_info,
				 union md_node_info *b_node_info)
{
	if (a_node_info->vdev_port.id != b_node_info->vdev_port.id)
		return false;

	if (a_node_info->vdev_port.parent_cfg_hdl !=
	    b_node_info->vdev_port.parent_cfg_hdl)
		return false;

	if (FUNC0(a_node_info->vdev_port.name,
		    b_node_info->vdev_port.name, MDESC_MAX_STR_LEN) != 0)
		return false;

	return true;
}