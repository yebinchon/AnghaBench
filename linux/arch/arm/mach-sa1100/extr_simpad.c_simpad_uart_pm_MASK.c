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
typedef  scalar_t__ u_int ;
struct uart_port {scalar_t__ mapbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECT_POWER_ON ; 
 int /*<<< orphan*/  RS232_ON ; 
 int /*<<< orphan*/  Ser1UTCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, u_int state, u_int oldstate)
{
	if (port->mapbase == (u_int)&Ser1UTCR0) {
		if (state)
		{
			FUNC0(RS232_ON);
			FUNC0(DECT_POWER_ON);
		}else
		{
			FUNC1(RS232_ON);
			FUNC1(DECT_POWER_ON);
		}
	}
}