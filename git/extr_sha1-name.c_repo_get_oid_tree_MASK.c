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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_OID_TREE ; 
 int FUNC0 (struct repository*,char const*,int /*<<< orphan*/ ,struct object_id*,struct object_context*) ; 

int FUNC1(struct repository *r,
		      const char *name,
		      struct object_id *oid)
{
	struct object_context unused;
	return FUNC0(r, name, GET_OID_TREE,
				    oid, &unused);
}