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
typedef  int /*<<< orphan*/  wi_t ;
typedef  int /*<<< orphan*/  wi_status ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 int /*<<< orphan*/  WI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

wi_status FUNC3(wi_t wi, const plist_t rpc_dict) {
  char *xml = NULL;
  uint32_t length = 0;
  FUNC1(rpc_dict, &xml, &length);
  FUNC2(xml);
  FUNC0(xml);
  return WI_SUCCESS;
}