#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int op; int type; } ;
typedef  TYPE_1__ dhcp_message_t ;

/* Variables and functions */
#define  dhcpmt_discover 128 
 int FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

int FUNC2 (dhcp_message_t *M, unsigned char *out, int olen) {
  if (M->op != 1) {
    FUNC1 (2, "Op code isn't BOOTREQUEST.\n");
    return -1;
  }

  switch (M->type) {
    case dhcpmt_discover: return FUNC0 (M, out, olen);
    default: return -1;
  }
  return -1;
}