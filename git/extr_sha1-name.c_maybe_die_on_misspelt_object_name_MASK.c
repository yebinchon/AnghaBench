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
 int /*<<< orphan*/  GET_OID_ONLY_TO_DIE ; 
 int /*<<< orphan*/  FUNC0 (struct repository*,char const*,int /*<<< orphan*/ ,char const*,struct object_id*,struct object_context*) ; 

void FUNC1(struct repository *r,
				       const char *name,
				       const char *prefix)
{
	struct object_context oc;
	struct object_id oid;
	FUNC0(r, name, GET_OID_ONLY_TO_DIE,
			       prefix, &oid, &oc);
}