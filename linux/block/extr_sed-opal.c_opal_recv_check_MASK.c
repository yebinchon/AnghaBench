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
struct TYPE_2__ {scalar_t__ outstandingData; scalar_t__ minTransfer; } ;
struct opal_header {TYPE_1__ cp; } ;
struct opal_dev {void* resp; } ;

/* Variables and functions */
 size_t IO_BUFFER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct opal_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev)
{
	size_t buflen = IO_BUFFER_LENGTH;
	void *buffer = dev->resp;
	struct opal_header *hdr = buffer;
	int ret;

	do {
		FUNC2("Sent OPAL command: outstanding=%d, minTransfer=%d\n",
			 hdr->cp.outstandingData,
			 hdr->cp.minTransfer);

		if (hdr->cp.outstandingData == 0 ||
		    hdr->cp.minTransfer != 0)
			return 0;

		FUNC0(buffer, 0, buflen);
		ret = FUNC1(dev);
	} while (!ret);

	return ret;
}