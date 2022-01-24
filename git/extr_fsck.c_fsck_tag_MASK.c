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
struct tag {int /*<<< orphan*/  object; struct object* tagged; } ;
struct object {int dummy; } ;
struct fsck_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCK_MSG_BAD_TAG_OBJECT ; 
 int FUNC0 (struct tag*,char const*,unsigned long,struct fsck_options*) ; 
 int FUNC1 (struct fsck_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct tag *tag, const char *data,
	unsigned long size, struct fsck_options *options)
{
	struct object *tagged = tag->tagged;

	if (!tagged)
		return FUNC1(options, &tag->object, FSCK_MSG_BAD_TAG_OBJECT, "could not load tagged object");

	return FUNC0(tag, data, size, options);
}