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
struct uart_port {int regshift; scalar_t__ membase; } ;

/* Variables and functions */
 int UART_IIR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC2(struct uart_port *p, int offset)
{
	unsigned int tmp;
	offset = offset << p->regshift;
	if (offset == UART_IIR) {
		tmp = FUNC1(p->membase + (UART_IIR & ~3));
		return (tmp >> 16) & 0xff; /* UART_IIR % 4 == 2 */
	} else
		return FUNC0(p->membase + offset);
}