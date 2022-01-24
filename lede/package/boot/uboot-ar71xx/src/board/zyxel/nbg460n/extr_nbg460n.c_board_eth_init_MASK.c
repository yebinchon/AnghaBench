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
typedef  int u16 ;
typedef  int /*<<< orphan*/  bd_t ;

/* Variables and functions */
 char* RTL8366_DEVNAME ; 
 int RTL8366_LANPHY_ID ; 
 int RTL8366_WANPHY_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,int*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(bd_t *bis)
{
    char *phynames[] = {RTL8366_DEVNAME, RTL8366_DEVNAME};
    u16 phyids[] = {RTL8366_LANPHY_ID, RTL8366_WANPHY_ID};
    u16 phyfixed[] = {1, 0};

    if (FUNC0(bis, phynames, phyids, phyfixed) <= 0)
        return -1;

	if (FUNC2())
        return -1;

    if (FUNC1(bis))
        return -1;
		
    return 0;
}