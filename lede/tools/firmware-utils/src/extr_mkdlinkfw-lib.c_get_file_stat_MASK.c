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
struct stat {int /*<<< orphan*/  st_size; } ;
struct file_info {int /*<<< orphan*/  file_size; int /*<<< orphan*/ * file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct stat*) ; 

int FUNC2(struct file_info *fdata)
{
	struct stat st;
	int res;

	if (fdata->file_name == NULL)
		return 0;

	res = FUNC1(fdata->file_name, &st);
	if (res) {
		FUNC0("stat failed on %s", fdata->file_name);
		return res;
	}

	fdata->file_size = st.st_size;
	return 0;
}