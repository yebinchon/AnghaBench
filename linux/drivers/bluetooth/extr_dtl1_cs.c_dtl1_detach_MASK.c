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
struct pcmcia_device {struct dtl1_info* priv; } ;
struct dtl1_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtl1_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC2(struct pcmcia_device *link)
{
	struct dtl1_info *info = link->priv;

	FUNC0(info);
	FUNC1(link);
}