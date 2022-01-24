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
struct ref {char* name; struct object_id old_oid; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct commit*,struct commit*) ; 
 struct commit* FUNC1 (struct object_id*,char*) ; 

__attribute__((used)) static int FUNC2(struct object_id *head_oid, struct ref *remote)
{
	struct commit *head = FUNC1(head_oid, "HEAD");
	struct commit *branch = FUNC1(&remote->old_oid,
						     remote->name);

	return FUNC0(branch, head);
}