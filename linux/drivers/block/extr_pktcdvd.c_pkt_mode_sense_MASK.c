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
struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int buflen; int /*<<< orphan*/  data_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int GPCMD_MODE_SENSE_10 ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct pktcdvd_device*,struct packet_command*) ; 

__attribute__((used)) static int FUNC2(struct pktcdvd_device *pd, struct packet_command *cgc, int page_code, int page_control)
{
	FUNC0(cgc->cmd, 0, sizeof(cgc->cmd));

	cgc->cmd[0] = GPCMD_MODE_SENSE_10;
	cgc->cmd[2] = page_code | (page_control << 6);
	cgc->cmd[7] = cgc->buflen >> 8;
	cgc->cmd[8] = cgc->buflen & 0xff;
	cgc->data_direction = CGC_DATA_READ;
	return FUNC1(pd, cgc);
}