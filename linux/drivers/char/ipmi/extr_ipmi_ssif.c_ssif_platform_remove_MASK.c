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
struct ssif_addr_info {int /*<<< orphan*/  link; int /*<<< orphan*/  added_client; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ssif_addr_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssif_addr_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssif_infos_mutex ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct ssif_addr_info *addr_info = FUNC0(&dev->dev);

	if (!addr_info)
		return 0;

	FUNC4(&ssif_infos_mutex);
	FUNC1(addr_info->added_client);

	FUNC3(&addr_info->link);
	FUNC2(addr_info);
	FUNC5(&ssif_infos_mutex);
	return 0;
}