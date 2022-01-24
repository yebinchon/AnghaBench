#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned short length; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_odb_expand_id ;
struct TYPE_8__ {int /*<<< orphan*/  expected_type; int /*<<< orphan*/  lookup_id; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_4__* expand_id_test_data ; 
 TYPE_1__* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	git_odb_expand_id **out_ids,
	size_t *out_num)
{
	git_odb_expand_id *ids;
	size_t num, i;

	num = FUNC0(expand_id_test_data);

	FUNC1((ids = FUNC2(num, sizeof(git_odb_expand_id))));

	for (i = 0; i < num; i++) {
		git_odb_expand_id *id = &ids[i];

		size_t len = FUNC4(expand_id_test_data[i].lookup_id);

		FUNC3(&id->id, expand_id_test_data[i].lookup_id, len);
		id->length = (unsigned short)len;
		id->type = expand_id_test_data[i].expected_type;
	}

	*out_ids = ids;
	*out_num = num;
}