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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 unsigned int AC_ERR_ATA_BUS ; 
 unsigned int AC_ERR_DEV ; 
 unsigned int AC_ERR_HOST_BUS ; 
 unsigned int AC_ERR_HSM ; 
 unsigned int AC_ERR_INVALID ; 
 unsigned int AC_ERR_MEDIA ; 
 unsigned int AC_ERR_NCQ ; 
 unsigned int AC_ERR_NODEV_HINT ; 
 unsigned int AC_ERR_OTHER ; 
 unsigned int AC_ERR_SYSTEM ; 
 unsigned int AC_ERR_TIMEOUT ; 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 

const char *
FUNC3(struct trace_seq *p, unsigned int eh_err_mask)
{
	const char *ret = FUNC0(p);

	FUNC1(p, "%x", eh_err_mask);
	if (eh_err_mask) {
		FUNC1(p, "{ ");
		if (eh_err_mask & AC_ERR_DEV)
			FUNC1(p, "DEV ");
		if (eh_err_mask & AC_ERR_HSM)
			FUNC1(p, "HSM ");
		if (eh_err_mask & AC_ERR_TIMEOUT)
			FUNC1(p, "TIMEOUT ");
		if (eh_err_mask & AC_ERR_MEDIA)
			FUNC1(p, "MEDIA ");
		if (eh_err_mask & AC_ERR_ATA_BUS)
			FUNC1(p, "ATA_BUS ");
		if (eh_err_mask & AC_ERR_HOST_BUS)
			FUNC1(p, "HOST_BUS ");
		if (eh_err_mask & AC_ERR_SYSTEM)
			FUNC1(p, "SYSTEM ");
		if (eh_err_mask & AC_ERR_INVALID)
			FUNC1(p, "INVALID ");
		if (eh_err_mask & AC_ERR_OTHER)
			FUNC1(p, "OTHER ");
		if (eh_err_mask & AC_ERR_NODEV_HINT)
			FUNC1(p, "NODEV_HINT ");
		if (eh_err_mask & AC_ERR_NCQ)
			FUNC1(p, "NCQ ");
		FUNC2(p, '}');
	}
	FUNC2(p, 0);

	return ret;
}