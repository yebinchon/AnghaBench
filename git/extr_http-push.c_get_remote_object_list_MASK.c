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

/* Variables and functions */
 int PROCESS_DIRS ; 
 int PROCESS_FILES ; 
 int /*<<< orphan*/  process_ls_object ; 
 scalar_t__* remote_dir_exists ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC1(unsigned char parent)
{
	char path[] = "objects/XX/";
	static const char hex[] = "0123456789abcdef";
	unsigned int val = parent;

	path[8] = hex[val >> 4];
	path[9] = hex[val & 0xf];
	remote_dir_exists[val] = 0;
	FUNC0(path, (PROCESS_FILES | PROCESS_DIRS),
		  process_ls_object, &val);
}