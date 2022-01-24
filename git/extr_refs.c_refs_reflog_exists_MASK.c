#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* reflog_exists ) (struct ref_store*,char const*) ;} ;

/* Variables and functions */
 int FUNC0 (struct ref_store*,char const*) ; 

int FUNC1(struct ref_store *refs, const char *refname)
{
	return refs->be->reflog_exists(refs, refname);
}