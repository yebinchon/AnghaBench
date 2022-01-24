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

/* Variables and functions */
 char* FUNC0 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const char *refname, const struct object_id *oid,
		    int flags, void *cb_data)
{
	FUNC1("%s %s 0x%x\n", FUNC0(oid), refname, flags);
	return 0;
}