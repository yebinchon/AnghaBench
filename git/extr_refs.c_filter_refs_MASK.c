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
struct ref_filter {int (* fn ) (char const*,struct object_id const*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cb_data; scalar_t__ prefix; int /*<<< orphan*/  pattern; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__,char const**) ; 
 int FUNC1 (char const*,struct object_id const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *refname, const struct object_id *oid,
			   int flags, void *data)
{
	struct ref_filter *filter = (struct ref_filter *)data;

	if (FUNC2(filter->pattern, refname, 0))
		return 0;
	if (filter->prefix)
		FUNC0(refname, filter->prefix, &refname);
	return filter->fn(refname, oid, flags, filter->cb_data);
}