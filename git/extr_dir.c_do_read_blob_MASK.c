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
struct oid_stat {int /*<<< orphan*/  oid; int /*<<< orphan*/  stat; } ;
struct object_id {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 char* FUNC3 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(const struct object_id *oid, struct oid_stat *oid_stat,
			size_t *size_out, char **data_out)
{
	enum object_type type;
	unsigned long sz;
	char *data;

	*size_out = 0;
	*data_out = NULL;

	data = FUNC3(oid, &type, &sz);
	if (!data || type != OBJ_BLOB) {
		FUNC0(data);
		return -1;
	}

	if (oid_stat) {
		FUNC1(&oid_stat->stat, 0, sizeof(oid_stat->stat));
		FUNC2(&oid_stat->oid, oid);
	}

	if (sz == 0) {
		FUNC0(data);
		return 0;
	}

	if (data[sz - 1] != '\n') {
		data = FUNC5(data, FUNC4(sz, 1));
		data[sz++] = '\n';
	}

	*size_out = FUNC6(sz);
	*data_out = data;

	return 1;
}