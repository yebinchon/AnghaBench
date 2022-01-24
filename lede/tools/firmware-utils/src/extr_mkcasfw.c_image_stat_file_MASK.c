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
struct stat {scalar_t__ st_size; } ;
struct image_desc {scalar_t__ out_size; scalar_t__ file_size; int /*<<< orphan*/ * file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int ERR_FATAL ; 
 int ERR_INVALID_IMAGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct stat*) ; 

int
FUNC4(struct image_desc *desc)
{
	struct stat st;
	int err;

	if (desc->file_name == NULL)
		return 0;

	err = FUNC3(desc->file_name, &st);
	if (err){
		FUNC0("stat failed on %s", desc->file_name);
		return ERR_FATAL;
	}

	if (st.st_size > desc->out_size) {
		FUNC1("file %s is too big, will be truncated to %d bytes\n",
			desc->file_name, desc->out_size);
		desc->file_size = desc->out_size;
		return ERR_INVALID_IMAGE;
	}


	desc->file_size = st.st_size;
	desc->out_size = FUNC2(desc->file_size,1);
	return 0;
}