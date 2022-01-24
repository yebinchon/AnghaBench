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
struct pcmcia_device {TYPE_1__** resource; struct dtl1_info* priv; } ;
struct dtl1_info {int dummy; } ;
struct TYPE_2__ {int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  dtl1_confcheck ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  dtl1_interrupt ; 
 int FUNC1 (struct dtl1_info*) ; 
 int FUNC2 (struct pcmcia_device*) ; 
 int FUNC3 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
	struct dtl1_info *info = link->priv;
	int ret;

	/* Look for a generic full-sized window */
	link->resource[0]->end = 8;
	ret = FUNC3(link, dtl1_confcheck, NULL);
	if (ret)
		goto failed;

	ret = FUNC4(link, dtl1_interrupt);
	if (ret)
		goto failed;

	ret = FUNC2(link);
	if (ret)
		goto failed;

	ret = FUNC1(info);
	if (ret)
		goto failed;

	return 0;

failed:
	FUNC0(link);
	return ret;
}