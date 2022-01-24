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
 int FUNC0 (char const* const) ; 
 char* FUNC1 (unsigned long long,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

char *FUNC3 (unsigned long long volume_id, int transaction_id, const char *const status, unsigned result) {
  FUNC2 (3, "get_hosts_list_by_status_and_result (volume_id:%llu, transaction_id: %d, status: %s, result:0x%x)\n", volume_id, transaction_id, status, result);
  int s = FUNC0 (status);
  if (s < 0) {
    FUNC2 (3, "get_hosts_list_by_status_and_result: unknown status \"%s\"\n", status);
    return NULL;
  }
  return FUNC1 (volume_id, transaction_id, (((unsigned) s) << 28) | result, 0xffffffffU);
}