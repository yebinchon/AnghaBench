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

/* Variables and functions */
 unsigned int MAX_WRITERS ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 struct pktcdvd_device** pkt_devs ; 

__attribute__((used)) static struct pktcdvd_device *FUNC1(unsigned int dev_minor)
{
	if (dev_minor >= MAX_WRITERS)
		return NULL;

	dev_minor = FUNC0(dev_minor, MAX_WRITERS);
	return pkt_devs[dev_minor];
}