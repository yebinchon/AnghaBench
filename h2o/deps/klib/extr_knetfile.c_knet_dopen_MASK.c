#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  KNF_TYPE_LOCAL ; 
 scalar_t__ FUNC0 (int,int) ; 

knetFile *FUNC1(int fd, const char *mode)
{
	knetFile *fp = (knetFile*)FUNC0(1, sizeof(knetFile));
	fp->type = KNF_TYPE_LOCAL;
	fp->fd = fd;
	return fp;
}