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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* name_filter ; 
 int /*<<< orphan*/  FUNC2 (struct tffs_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(uint8_t *buffer,
				   struct tffs_key_name_table *key_names)
{
	int i;
	uint16_t id;
	struct tffs_entry tmp;
	const char *name;

	for (i = 0; i < key_names->size; i++) {
		name = key_names->entries[i].val;

		if (FUNC5(name, name_filter, FUNC4(name)) == 0) {
			id = FUNC6(*key_names->entries[i].id);

			if (FUNC0(buffer, id, &tmp)) {
				FUNC2(&tmp);
				FUNC3("\n");
				return EXIT_SUCCESS;
			} else {
				FUNC1(stderr,
					"ERROR: no value found for name %s!\n",
					name);
				return EXIT_FAILURE;
			}
		}
	}

	FUNC1(stderr, "ERROR: Unknown key name %s!\n", name_filter);
	return EXIT_FAILURE;
}