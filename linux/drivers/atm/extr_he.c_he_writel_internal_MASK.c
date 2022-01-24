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
struct he_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_CTL ; 
 unsigned int FUNC0 (unsigned int) ; 
 int CON_CTL_BUSY ; 
 unsigned int CON_CTL_WRITE ; 
 int /*<<< orphan*/  CON_DAT ; 
 int FUNC1 (struct he_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct he_dev*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void
FUNC3(struct he_dev *he_dev, unsigned val, unsigned addr,
								unsigned flags)
{
	FUNC2(he_dev, val, CON_DAT);
	(void) FUNC1(he_dev, CON_DAT);		/* flush posted writes */
	FUNC2(he_dev, flags | CON_CTL_WRITE | FUNC0(addr), CON_CTL);
	while (FUNC1(he_dev, CON_CTL) & CON_CTL_BUSY);
}