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
struct pack_entry {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct object_id const*,struct pack_entry*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC1(const struct object_id *oid)
{
	struct pack_entry e;
	return FUNC0(the_repository, oid, &e);
}