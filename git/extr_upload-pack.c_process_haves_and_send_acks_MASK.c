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
struct oid_array {int dummy; } ;
struct upload_pack_data {struct oid_array haves; int /*<<< orphan*/  writer; scalar_t__ done; } ;
struct object_array {int dummy; } ;

/* Variables and functions */
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*,struct oid_array*,struct object_array*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct oid_array*,struct object_array*,struct object_array*) ; 

__attribute__((used)) static int FUNC5(struct upload_pack_data *data,
				       struct object_array *have_obj,
				       struct object_array *want_obj)
{
	struct oid_array common = OID_ARRAY_INIT;
	int ret = 0;

	FUNC3(&data->haves, &common, have_obj);
	if (data->done) {
		ret = 1;
	} else if (FUNC4(&data->writer, &common, have_obj, want_obj)) {
		FUNC1(&data->writer);
		ret = 1;
	} else {
		/* Add Flush */
		FUNC2(&data->writer);
		ret = 0;
	}

	FUNC0(&data->haves);
	FUNC0(&common);
	return ret;
}