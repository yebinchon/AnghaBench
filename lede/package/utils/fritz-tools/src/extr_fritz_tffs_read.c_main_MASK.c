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
typedef  int /*<<< orphan*/  uint8_t ;
struct tffs_key_name_table {int size; int /*<<< orphan*/ * entries; } ;
struct tffs_entry {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TFFS_ID_TABLE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tffs_entry*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 char* input_file ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tffs_entry*,struct tffs_key_name_table*) ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 scalar_t__ print_all_key_names ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ show_all ; 
 int /*<<< orphan*/  FUNC12 (struct tffs_key_name_table*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct tffs_key_name_table*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct tffs_key_name_table*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ tffs_size ; 

int FUNC15(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;
	uint8_t *buffer;
	FILE *fp;
	struct tffs_entry name_table;
	struct tffs_key_name_table key_names;

	progname = FUNC0(argv[0]);

	FUNC11(argc, argv);

	fp = FUNC3(input_file, "r");

	if (!fp) {
		FUNC4(stderr, "ERROR: Failed to open tffs input file %s\n",
			input_file);
		goto out;
	}

	if (tffs_size == 0) {
		FUNC7(fp, 0L, SEEK_END);
		tffs_size = FUNC8(fp);
		FUNC7(fp, 0L, SEEK_SET);
	}

	buffer = FUNC9(tffs_size);

	if (FUNC5(buffer, 1, tffs_size, fp) != tffs_size) {
		FUNC4(stderr, "ERROR: Failed read tffs file %s\n",
			input_file);
		goto out_free;
	}

	if (!FUNC2(buffer, TFFS_ID_TABLE_NAME, &name_table)) {
		FUNC4(stderr,"ERROR: No name table found in tffs file %s\n",
			input_file);
		FUNC4(stderr,"       Is byte-swapping (-b) required?\n");
		goto out_free;
	}

	FUNC10(&name_table, &key_names);
	if (key_names.size < 1) {
		FUNC4(stderr, "ERROR: No name table found in tffs file %s\n",
			input_file);
		goto out_free_names;
	}

	if (print_all_key_names) {
		FUNC12(&key_names);
		ret = EXIT_SUCCESS;
	} else if (show_all) {
		ret = FUNC13(buffer, &key_names);
	} else {
		ret = FUNC14(buffer, &key_names);
	}

out_free_names:
	FUNC6(key_names.entries);
out_free:
	FUNC1(fp);
	FUNC6(buffer);
out:
	return ret;
}