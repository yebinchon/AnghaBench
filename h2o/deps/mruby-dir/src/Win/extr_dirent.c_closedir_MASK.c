#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int handle; struct TYPE_4__* name; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(DIR *dir)
{
    int result = -1;

    if(dir)
    {
        if(dir->handle != -1)
        {
            result = FUNC0(dir->handle);
        }

        FUNC1(dir->name);
        FUNC1(dir);
    }

    if(result == -1) /* map all errors to EBADF */
    {
        errno = EBADF;
    }

    return result;
}