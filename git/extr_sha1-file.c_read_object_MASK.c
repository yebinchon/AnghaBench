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
struct object_info {int* typep; unsigned long* sizep; void** contentp; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct object_info OBJECT_INFO_INIT ; 
 scalar_t__ FUNC0 (struct repository*,struct object_id const*,struct object_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(struct repository *r,
			 const struct object_id *oid, enum object_type *type,
			 unsigned long *size)
{
	struct object_info oi = OBJECT_INFO_INIT;
	void *content;
	oi.typep = type;
	oi.sizep = size;
	oi.contentp = &content;

	if (FUNC0(r, oid, &oi, 0) < 0)
		return NULL;
	return content;
}