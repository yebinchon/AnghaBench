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
struct ref_storage_be {struct ref_store* (* init ) (char const*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct ref_storage_be* FUNC1 (char const*) ; 
 struct ref_store* FUNC2 (char const*,unsigned int) ; 

__attribute__((used)) static struct ref_store *FUNC3(const char *gitdir,
					unsigned int flags)
{
	const char *be_name = "files";
	struct ref_storage_be *be = FUNC1(be_name);
	struct ref_store *refs;

	if (!be)
		FUNC0("reference backend %s is unknown", be_name);

	refs = be->init(gitdir, flags);
	return refs;
}