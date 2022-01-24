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
typedef  int u32 ;
typedef  int u16 ;
struct ace_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_CTRL ; 
 int ACE_CTRL_ERRORIRQ ; 
 int /*<<< orphan*/  ACE_STATUS ; 
 int ACE_STATUS_CFCERROR ; 
 int ACE_STATUS_CFGERROR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ace_device*) ; 
 int FUNC1 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ace_device *ace)
{
	u32 sreg = FUNC2(ace, ACE_STATUS);
	u16 creg = FUNC1(ace, ACE_CTRL);

	/* Check for error occurrence */
	if ((sreg & (ACE_STATUS_CFGERROR | ACE_STATUS_CFCERROR)) &&
	    (creg & ACE_CTRL_ERRORIRQ)) {
		FUNC3(ace->dev, "transfer failure\n");
		FUNC0(ace);
		return -EIO;
	}

	return 0;
}