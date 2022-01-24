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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  NVRAM_STAGING ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 () ; 
 int nvram_part_size ; 
 int FUNC4 (char*,int,...) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

int FUNC7(void)
{
	int fdmtd, fdstg, stat;
	char *mtd = FUNC3();
	char buf[nvram_part_size];

	stat = -1;

	if( (mtd != NULL) && (nvram_part_size > 0) )
	{
		if( (fdmtd = FUNC4(mtd, O_RDONLY)) > -1 )
		{
			if( FUNC5(fdmtd, buf, sizeof(buf)) == sizeof(buf) )
			{
				if((fdstg = FUNC4(NVRAM_STAGING, O_WRONLY | O_CREAT, 0600)) > -1)
				{
					FUNC6(fdstg, buf, sizeof(buf));
					FUNC2(fdstg);
					FUNC0(fdstg);

					stat = 0;
				}
			}

			FUNC0(fdmtd);
		}
	}

	FUNC1(mtd);
	return stat;
}