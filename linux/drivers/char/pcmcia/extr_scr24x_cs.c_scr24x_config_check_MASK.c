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
struct pcmcia_device {int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t PCMCIA_IOPORT_0 ; 
 int FUNC0 (struct pcmcia_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *link, void *priv_data)
{
	if (FUNC1(link->resource[PCMCIA_IOPORT_0]) != 0x11)
		return -ENODEV;
	return FUNC0(link);
}