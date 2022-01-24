#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct ssif_addr_info {int /*<<< orphan*/  link; TYPE_2__ binfo; int /*<<< orphan*/  adapter_name; struct i2c_client* client; int /*<<< orphan*/  addr_src; } ;
struct i2c_client {int /*<<< orphan*/  addr; TYPE_1__* adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SI_ACPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ssif_addr_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssif_infos ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct ssif_addr_info *info;

	info = FUNC1(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->addr_src = SI_ACPI;
	info->client = client;
	info->adapter_name = FUNC0(client->adapter->name, GFP_KERNEL);
	info->binfo.addr = client->addr;
	FUNC2(&info->link, &ssif_infos);
	return 0;
}