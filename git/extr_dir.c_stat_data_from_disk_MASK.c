#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* nsec; void* sec; } ;
struct TYPE_3__ {void* nsec; void* sec; } ;
struct stat_data {void* sd_size; void* sd_gid; void* sd_uid; void* sd_ino; void* sd_dev; TYPE_2__ sd_mtime; TYPE_1__ sd_ctime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat_data*,unsigned char const*,int) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct stat_data *to, const unsigned char *data)
{
	FUNC0(to, data, sizeof(*to));
	to->sd_ctime.sec  = FUNC1(to->sd_ctime.sec);
	to->sd_ctime.nsec = FUNC1(to->sd_ctime.nsec);
	to->sd_mtime.sec  = FUNC1(to->sd_mtime.sec);
	to->sd_mtime.nsec = FUNC1(to->sd_mtime.nsec);
	to->sd_dev	  = FUNC1(to->sd_dev);
	to->sd_ino	  = FUNC1(to->sd_ino);
	to->sd_uid	  = FUNC1(to->sd_uid);
	to->sd_gid	  = FUNC1(to->sd_gid);
	to->sd_size	  = FUNC1(to->sd_size);
}