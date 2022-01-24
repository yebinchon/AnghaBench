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
struct file_info {int file_size; int /*<<< orphan*/  file_name; int /*<<< orphan*/  file_data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct file_info* finfo) {
	int fs = 0;
	FILE* fp = NULL;

	if (!finfo || !finfo->file_name) {
		FUNC1("Invalid pointer provided!\n");
		return -1;
	}

	FUNC0("Opening file: %s\n", finfo->file_name);

	if (!(fp = FUNC3(finfo->file_name, "rb"))) {
		FUNC1("Error opening file: %s\n", finfo->file_name);
		return -1;
	}

	/* Get filesize */
	FUNC8(fp);
	FUNC5(fp, 0L, SEEK_END);
	fs = FUNC6(fp);
	FUNC8(fp);

	if (fs < 0) {
		FUNC1("Error getting filesize: %s\n", finfo->file_name);
		FUNC2(fp);
		return -1;
	}

	FUNC0("Filesize: %i\n", fs);
	finfo->file_size = fs;

	if (!(finfo->file_data = FUNC7(fs))) {
		FUNC1("Out of memory!\n");
		FUNC2(fp);
		return -1;
	}

	if (FUNC4(finfo->file_data, 1, fs, fp) != fs) {
		FUNC1("Error reading file %s\n", finfo->file_name);
		FUNC2(fp);
		return -1;
	}

	FUNC0("File: read successful\n");
	FUNC2(fp);

	return 0;
}