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
struct ubus_object {scalar_t__ id; scalar_t__ name; } ;
struct TYPE_2__ {struct ubus_object obj; } ;
struct wpa_supplicant {TYPE_1__ ubus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ubus_object*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	struct ubus_object *obj = &wpa_s->ubus.obj;
	char *name = (char *) obj->name;

	if (!ctx)
		return;

	if (obj->id) {
		FUNC1(ctx, obj);
		FUNC2();
	}

	FUNC0(name);
}