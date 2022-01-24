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
struct object_id {int dummy; } ;
struct object_context {int dummy; } ;
struct list_objects_filter_options {int /*<<< orphan*/  sparse_oid_name; } ;
struct filter_sparse_data {int nr; TYPE_1__* array_frame; int /*<<< orphan*/  alloc; int /*<<< orphan*/  pl; } ;
struct filter {int /*<<< orphan*/  free_fn; int /*<<< orphan*/  filter_object_fn; struct filter_sparse_data* filter_data; } ;
struct TYPE_2__ {scalar_t__ child_prov_omit; scalar_t__ default_match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GET_OID_BLOB ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct object_id*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_sparse ; 
 int /*<<< orphan*/  filter_sparse_free ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,struct object_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 
 struct filter_sparse_data* FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(
	struct list_objects_filter_options *filter_options,
	struct filter *filter)
{
	struct filter_sparse_data *d = FUNC6(1, sizeof(*d));
	struct object_context oc;
	struct object_id sparse_oid;

	if (FUNC4(the_repository,
				 filter_options->sparse_oid_name,
				 GET_OID_BLOB, &sparse_oid, &oc))
		FUNC3(FUNC1("unable to access sparse blob in '%s'"),
		    filter_options->sparse_oid_name);
	if (FUNC2(&sparse_oid, "", 0, &d->pl) < 0)
		FUNC3(FUNC1("unable to parse sparse filter data in %s"),
		    FUNC5(&sparse_oid));

	FUNC0(d->array_frame, d->nr + 1, d->alloc);
	d->array_frame[d->nr].default_match = 0; /* default to include */
	d->array_frame[d->nr].child_prov_omit = 0;
	d->nr++;

	filter->filter_data = d;
	filter->filter_object_fn = filter_sparse;
	filter->free_fn = filter_sparse_free;
}