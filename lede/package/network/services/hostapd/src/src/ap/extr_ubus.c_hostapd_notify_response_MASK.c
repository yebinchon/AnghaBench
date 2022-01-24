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
struct wpabuf {int dummy; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  notify_response; } ;
struct hostapd_data {TYPE_1__ ubus; } ;
struct blob_attr {int dummy; } ;

/* Variables and functions */
 size_t NOTIFY_RESPONSE ; 
 int UBUS_STATUS_INVALID_ARGUMENT ; 
 int UBUS_STATUS_OK ; 
 int __NOTIFY_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hostapd_data* FUNC4 (struct ubus_object*) ; 
 int /*<<< orphan*/  notify_policy ; 

__attribute__((used)) static int
FUNC5(struct ubus_context *ctx, struct ubus_object *obj,
			struct ubus_request_data *req, const char *method,
			struct blob_attr *msg)
{
	struct blob_attr *tb[__NOTIFY_MAX];
	struct hostapd_data *hapd = FUNC4(obj);
	struct wpabuf *elems;
	const char *pos;
	size_t len;

	FUNC3(notify_policy, __NOTIFY_MAX, tb,
		      FUNC0(msg), FUNC1(msg));

	if (!tb[NOTIFY_RESPONSE])
		return UBUS_STATUS_INVALID_ARGUMENT;

	hapd->ubus.notify_response = FUNC2(tb[NOTIFY_RESPONSE]);

	return UBUS_STATUS_OK;
}