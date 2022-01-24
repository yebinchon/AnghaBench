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
 int IFX_PTM_VER_MAJOR ; 
 int IFX_PTM_VER_MID ; 
 int IFX_PTM_VER_MINOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC1 (char*,char*,unsigned int,unsigned int,...) ; 

__attribute__((used)) static inline int FUNC2(char *buf)
{
    int len = 0;
    unsigned int major, minor;

    FUNC0(&major, &minor);

    len += FUNC1(buf + len, "PTM %d.%d.%d", IFX_PTM_VER_MAJOR, IFX_PTM_VER_MID, IFX_PTM_VER_MINOR);
    len += FUNC1(buf + len, "    PTM (E1) firmware version %d.%d\n", major, minor);

    return len;
}