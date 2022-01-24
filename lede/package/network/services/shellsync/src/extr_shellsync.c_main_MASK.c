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
 int /*<<< orphan*/  SEM_BLOCK_NAME ; 
 int /*<<< orphan*/  SEM_COUNT_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int wait_timeout ; 

int FUNC4(int argc,char *argv[])
{
    if(argc!=3)
    {
        FUNC0("Usage: shellsync <process num> <wait_timeout>\n");
    }
    else
    {
        int proc_num;
        FUNC2(argv[1],"%d",&proc_num);
        FUNC2(argv[2],"%d",&wait_timeout);
        if(FUNC3(proc_num)<0)
        {
            FUNC0("Processes sync failed.\n");
            FUNC1(SEM_COUNT_NAME);
            FUNC1(SEM_BLOCK_NAME);
            return 1;
        }
        else
        {
            FUNC0("Processes sync succeed.\n");
            return 0;
        }
    }
}