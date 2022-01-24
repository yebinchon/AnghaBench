#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubus_object {char* name; int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; TYPE_3__* type; } ;
struct TYPE_5__ {int /*<<< orphan*/  banned; struct ubus_object obj; } ;
struct hostapd_data {TYPE_2__ ubus; TYPE_1__* conf; } ;
struct TYPE_6__ {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; } ;
struct TYPE_4__ {int mesh; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int MESH_ENABLED ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avl_compare_macaddr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_3__ bss_object_type ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ubus_object*) ; 

void FUNC5(struct hostapd_data *hapd)
{
	struct ubus_object *obj = &hapd->ubus.obj;
	char *name;
	int ret;

#ifdef CONFIG_MESH
	if (hapd->conf->mesh & MESH_ENABLED)
		return;
#endif

	if (!FUNC2())
		return;

	if (FUNC0(&name, "hostapd.%d", hapd->conf->iface) < 0)
		return;

	FUNC1(&hapd->ubus.banned, avl_compare_macaddr, false, NULL);
	obj->name = name;
	obj->type = &bss_object_type;
	obj->methods = bss_object_type.methods;
	obj->n_methods = bss_object_type.n_methods;
	ret = FUNC4(ctx, obj);
	FUNC3();
}