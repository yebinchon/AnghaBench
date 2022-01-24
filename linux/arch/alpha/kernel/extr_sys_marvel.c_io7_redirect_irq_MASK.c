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
struct io7 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct io7 *io7, 
		 volatile unsigned long *csr, 
		 unsigned int where)
{
	unsigned long val;
	
	val = *csr;
	val &= ~(0x1ffUL << 24);		/* clear the target pid   */
	val |= ((unsigned long)where << 24);	/* set the new target pid */
	
	*csr = val;
	FUNC0();
	*csr;
}