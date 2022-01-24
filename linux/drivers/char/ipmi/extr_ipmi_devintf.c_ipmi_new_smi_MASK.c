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
struct ipmi_reg_list {int /*<<< orphan*/  link; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ipmi_class ; 
 int /*<<< orphan*/  ipmi_major ; 
 struct ipmi_reg_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  reg_list ; 
 int /*<<< orphan*/  reg_list_mutex ; 

__attribute__((used)) static void FUNC7(int if_num, struct device *device)
{
	dev_t dev = FUNC0(ipmi_major, if_num);
	struct ipmi_reg_list *entry;

	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC6("ipmi_devintf: Unable to create the ipmi class device link\n");
		return;
	}
	entry->dev = dev;

	FUNC4(&reg_list_mutex);
	FUNC1(ipmi_class, device, dev, NULL, "ipmi%d", if_num);
	FUNC3(&entry->link, &reg_list);
	FUNC5(&reg_list_mutex);
}