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
struct object_info {unsigned long* sizep; } ;

/* Variables and functions */
 struct object_info OBJECT_INFO_INIT ; 
 int FUNC0 (char const*,struct object_info*,int /*<<< orphan*/ ) ; 

int FUNC1(const char *hdr, unsigned long *sizep)
{
	struct object_info oi = OBJECT_INFO_INIT;

	oi.sizep = sizep;
	return FUNC0(hdr, &oi, 0);
}