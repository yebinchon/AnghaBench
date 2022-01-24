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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tffs_key_name_table {int size; TYPE_1__* entries; } ;
struct tffs_entry {int dummy; } ;
struct TYPE_2__ {char* val; int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(uint8_t *buffer,
				    struct tffs_key_name_table *key_names)
{
	int i, has_value = 0;
	uint16_t id;
	struct tffs_entry tmp;

	for (i = 0; i < key_names->size; i++) {
		id = FUNC4(*key_names->entries[i].id);

		if (FUNC0(buffer, id, &tmp)) {
			FUNC3("%s=", key_names->entries[i].val);
			FUNC2(&tmp);
			FUNC3("\n");
			has_value++;
		}
	}

	if (!has_value) {
		FUNC1(stderr, "ERROR: no values found!\n");
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}