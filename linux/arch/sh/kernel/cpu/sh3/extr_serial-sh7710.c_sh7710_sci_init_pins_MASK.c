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
struct uart_port {int mapbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACR ; 
 int /*<<< orphan*/  PBCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int cflag)
{
	if (port->mapbase == 0xA4400000) {
		FUNC1(FUNC0(PACR) & 0xffc0, PACR);
		FUNC1(FUNC0(PBCR) & 0x0fff, PBCR);
	} else if (port->mapbase == 0xA4410000)
		FUNC1(FUNC0(PBCR) & 0xf003, PBCR);
}