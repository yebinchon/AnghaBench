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
typedef  int uint32_t ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct blob_attr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct blob_attr**) ; 
 int __BSS_MGMT_EN_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bss_mgmt_enable_policy ; 
 struct hostapd_data* FUNC6 (struct ubus_object*) ; 

__attribute__((used)) static int
FUNC7(struct ubus_context *ctx, struct ubus_object *obj,
		   struct ubus_request_data *req, const char *method,
		   struct blob_attr *msg)

{
	struct hostapd_data *hapd = FUNC6(obj);
	struct blob_attr *tb[__BSS_MGMT_EN_MAX];
	struct blob_attr *cur;
	uint32_t flags = 0;
	int i;
	bool neigh = false, beacon = false;

	FUNC5(bss_mgmt_enable_policy, __BSS_MGMT_EN_MAX, tb, FUNC2(msg), FUNC3(msg));

	for (i = 0; i < FUNC0(tb); i++) {
		if (!tb[i] || !FUNC4(tb[i]))
			continue;

		flags |= (1 << i);
	}

	FUNC1(hapd, flags);
}