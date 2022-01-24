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
struct tag {int /*<<< orphan*/  tagged; int /*<<< orphan*/  object; } ;
struct fsck_options {int (* walk ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct fsck_options*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ANY ; 
 char* FUNC0 (struct fsck_options*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tag*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsck_options*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct fsck_options*) ; 

__attribute__((used)) static int FUNC4(struct tag *tag, void *data, struct fsck_options *options)
{
	char *name = FUNC0(options, &tag->object);

	if (FUNC1(tag))
		return -1;
	if (name)
		FUNC2(options, tag->tagged, "%s", name);
	return options->walk(tag->tagged, OBJ_ANY, data, options);
}