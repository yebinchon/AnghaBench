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
struct TYPE_3__ {int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(MGSLPC_INFO *info,const char* data, int count, int xmit)
{
	int i;
	int linecount;
	if (xmit)
		FUNC0("%s tx data:\n", info->device_name);
	else
		FUNC0("%s rx data:\n", info->device_name);

	while(count) {
		if (count > 16)
			linecount = 16;
		else
			linecount = count;

		for(i=0;i<linecount;i++)
			FUNC0("%02X ", (unsigned char)data[i]);
		for(;i<17;i++)
			FUNC0("   ");
		for(i=0;i<linecount;i++) {
			if (data[i]>=040 && data[i]<=0176)
				FUNC0("%c", data[i]);
			else
				FUNC0(".");
		}
		FUNC0("\n");

		data  += linecount;
		count -= linecount;
	}
}