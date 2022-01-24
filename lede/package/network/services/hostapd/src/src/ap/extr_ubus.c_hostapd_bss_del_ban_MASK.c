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
struct ubus_banned_client {int /*<<< orphan*/  avl; } ;
struct TYPE_2__ {int /*<<< orphan*/  banned; } ;
struct hostapd_data {TYPE_1__ ubus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ubus_banned_client*) ; 

__attribute__((used)) static void
FUNC2(void *eloop_data, void *user_ctx)
{
	struct ubus_banned_client *ban = eloop_data;
	struct hostapd_data *hapd = user_ctx;

	FUNC0(&hapd->ubus.banned, &ban->avl);
	FUNC1(ban);
}