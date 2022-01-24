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
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct ref_store*,char const*,int,struct object_id*,int*) ; 
 char* FUNC1 (char const*) ; 

char *FUNC2(struct ref_store *refs,
			  const char *refname, int resolve_flags,
			  struct object_id *oid, int *flags)
{
	const char *result;

	result = FUNC0(refs, refname, resolve_flags,
					 oid, flags);
	return FUNC1(result);
}