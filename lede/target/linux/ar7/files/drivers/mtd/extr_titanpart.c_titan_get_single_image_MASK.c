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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char**,char*) ; 
 int FUNC4 (char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int	FUNC5(char *bootcfg_name, unsigned int *flash_base,
				unsigned int *flash_end)
{
	char	*env_ptr;
	char	*base_ptr;
	char	*end_ptr;
	char	image_name[30];
	char * string_ptr;

	if(!bootcfg_name || !flash_base || !flash_end)
		return -1;

	env_ptr = FUNC1(bootcfg_name);
	if(!env_ptr){
		FUNC0("titan: %s variable not found.\n", bootcfg_name);
		return -1;	/* Error, no bootcfg variable */
	}

	string_ptr = image_name;
	/* Save off the image name */
	FUNC2(image_name, env_ptr, 30);
	image_name[29]=0;

	end_ptr=FUNC3(&string_ptr, "\"");
	base_ptr=FUNC3(&string_ptr, "\"");		/* Loose the last " */
	if(!end_ptr || !base_ptr){
		FUNC0("titan: invalid bootcfg format, %s.\n", image_name);
		return -1;	/* Error, invalid bootcfg variable */
	}

	/* Now, parse the addresses */
	return FUNC4(base_ptr, flash_base, flash_end);
}