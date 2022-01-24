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
typedef  scalar_t__ u_long ;
struct pcmcia_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC2(u_long arg)
{
	struct pcmcia_device *link = (struct pcmcia_device *)arg;

	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC1("mgslpc_release(0x%p)\n", link);

	FUNC0(link);
}