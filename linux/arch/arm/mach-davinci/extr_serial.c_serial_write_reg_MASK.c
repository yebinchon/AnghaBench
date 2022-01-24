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
struct plat_serial8250_port {int regshift; scalar_t__ membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct plat_serial8250_port *p, int offset,
				    int value)
{
	offset <<= p->regshift;

	FUNC0(!p->membase, "unmapped write: uart[%d]\n", offset);

	FUNC1(value, p->membase + offset);
}