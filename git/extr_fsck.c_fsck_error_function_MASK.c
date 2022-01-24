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
struct object {int dummy; } ;
struct fsck_options {int dummy; } ;

/* Variables and functions */
 int FSCK_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct fsck_options*,struct object*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 

int FUNC3(struct fsck_options *o,
	struct object *obj, int msg_type, const char *message)
{
	if (msg_type == FSCK_WARN) {
		FUNC2("object %s: %s", FUNC0(o, obj), message);
		return 0;
	}
	FUNC1("object %s: %s", FUNC0(o, obj), message);
	return 1;
}