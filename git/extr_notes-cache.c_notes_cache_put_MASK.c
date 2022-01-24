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
struct object_id {int dummy; } ;
struct notes_cache {int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct object_id*,struct object_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,size_t,char*,struct object_id*) ; 

int FUNC2(struct notes_cache *c, struct object_id *key_oid,
		    const char *data, size_t size)
{
	struct object_id value_oid;

	if (FUNC1(data, size, "blob", &value_oid) < 0)
		return -1;
	return FUNC0(&c->tree, key_oid, &value_oid, NULL);
}