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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  write_pack_info_file ; 

__attribute__((used)) static int FUNC6(int force)
{
	char *infofile = FUNC4("%s/info/packs", FUNC2());
	int ret;

	FUNC3(infofile, force);
	ret = FUNC5(infofile, write_pack_info_file, force);
	FUNC1();
	FUNC0(infofile);
	return ret;
}