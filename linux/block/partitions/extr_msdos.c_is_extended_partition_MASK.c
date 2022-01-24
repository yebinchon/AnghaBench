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
struct partition {int dummy; } ;

/* Variables and functions */
 scalar_t__ DOS_EXTENDED_PARTITION ; 
 scalar_t__ LINUX_EXTENDED_PARTITION ; 
 scalar_t__ FUNC0 (struct partition*) ; 
 scalar_t__ WIN98_EXTENDED_PARTITION ; 

__attribute__((used)) static inline int FUNC1(struct partition *p)
{
	return (FUNC0(p) == DOS_EXTENDED_PARTITION ||
		FUNC0(p) == WIN98_EXTENDED_PARTITION ||
		FUNC0(p) == LINUX_EXTENDED_PARTITION);
}