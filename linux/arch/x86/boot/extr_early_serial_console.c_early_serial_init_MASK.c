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

/* Variables and functions */
 unsigned char DLAB ; 
 scalar_t__ DLH ; 
 scalar_t__ DLL ; 
 scalar_t__ FCR ; 
 scalar_t__ IER ; 
 scalar_t__ LCR ; 
 scalar_t__ MCR ; 
 int early_serial_base ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC2(int port, int baud)
{
	unsigned char c;
	unsigned divisor;

	FUNC1(0x3, port + LCR);	/* 8n1 */
	FUNC1(0, port + IER);	/* no interrupt */
	FUNC1(0, port + FCR);	/* no fifo */
	FUNC1(0x3, port + MCR);	/* DTR + RTS */

	divisor	= 115200 / baud;
	c = FUNC0(port + LCR);
	FUNC1(c | DLAB, port + LCR);
	FUNC1(divisor & 0xff, port + DLL);
	FUNC1((divisor >> 8) & 0xff, port + DLH);
	FUNC1(c & ~DLAB, port + LCR);

	early_serial_base = port;
}