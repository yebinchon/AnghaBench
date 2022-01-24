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
typedef  int /*<<< orphan*/  AT91PS_MciDevice ;

/* Variables and functions */
 int /*<<< orphan*/  AT91C_MCI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned int*,int) ; 
 int BUFFER_SIZE_MCI_DEVICE ; 
 int /*<<< orphan*/  MCI_Device ; 
 unsigned int FUNC2 (unsigned int) ; 

int FUNC3(
	AT91PS_MciDevice pMCI_Device,
	int src,
	unsigned int *databuffer,
	int sizeToRead)
{
	int i;
	unsigned char *buf = (unsigned char *)databuffer;

	//* Read Block 1
	for(i=0;i<BUFFER_SIZE_MCI_DEVICE;i++)
		*buf++ = 0x00;	
	FUNC1(&MCI_Device,src,databuffer,sizeToRead);

	//* Wait end of Read
	FUNC0(AT91C_MCI_TIMEOUT);

	{
		int index;
		unsigned int *uiBuffer = databuffer;

		for(index = 0; index < 512/4; index++)
			uiBuffer[index] = FUNC2(uiBuffer[index]);
	}
	return(1);
}