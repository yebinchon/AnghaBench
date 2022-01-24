#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int* MCI_RSPR; } ;
typedef  int /*<<< orphan*/  AT91PS_MciDevice ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_ALL_SEND_CID_CMD ; 
 TYPE_1__* AT91C_BASE_MCI ; 
 int AT91C_CMD_SEND_ERROR ; 
 scalar_t__ AT91C_CMD_SEND_OK ; 
 int /*<<< orphan*/  AT91C_NO_ARGUMENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1 (AT91PS_MciDevice pMCI_Device, unsigned int *response)
{
 	if(FUNC0(pMCI_Device,
							AT91C_ALL_SEND_CID_CMD,
							AT91C_NO_ARGUMENT) != AT91C_CMD_SEND_OK)
		return AT91C_CMD_SEND_ERROR;
	
    response[0] = AT91C_BASE_MCI->MCI_RSPR[0];
   	response[1] = AT91C_BASE_MCI->MCI_RSPR[1];
    response[2] = AT91C_BASE_MCI->MCI_RSPR[2];
    response[3] = AT91C_BASE_MCI->MCI_RSPR[3];
    
    return AT91C_CMD_SEND_OK;
}