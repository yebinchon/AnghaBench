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
struct ubus_request {int dummy; } ;
struct blob_attr {int dummy; } ;

/* Variables and functions */
 int DUMP_ATTR_INTERFACE ; 
 int /*<<< orphan*/  DUMP_ATTR_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump ; 
 int /*<<< orphan*/  dump_attrs ; 

__attribute__((used)) static void FUNC4(struct ubus_request *req __attribute__((unused)),
		int type __attribute__((unused)), struct blob_attr *msg)
{
	struct blob_attr *tb[DUMP_ATTR_INTERFACE];
	FUNC3(dump_attrs, DUMP_ATTR_MAX, tb, FUNC0(msg), FUNC1(msg));

	if (!tb[DUMP_ATTR_INTERFACE])
		return;

	dump = FUNC2(tb[DUMP_ATTR_INTERFACE]);
}