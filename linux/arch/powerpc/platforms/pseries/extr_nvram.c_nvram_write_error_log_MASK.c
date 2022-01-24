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
 void* FUNC0 () ; 
 void* last_rtas_event ; 
 void* last_unread_rtas_event ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  rtas_log_partition ; 

int FUNC2(char * buff, int length,
                          unsigned int err_type, unsigned int error_log_cnt)
{
	int rc = FUNC1(&rtas_log_partition, buff, length,
						err_type, error_log_cnt);
	if (!rc) {
		last_unread_rtas_event = FUNC0();
#ifdef CONFIG_PSTORE
		last_rtas_event = ktime_get_real_seconds();
#endif
	}

	return rc;
}