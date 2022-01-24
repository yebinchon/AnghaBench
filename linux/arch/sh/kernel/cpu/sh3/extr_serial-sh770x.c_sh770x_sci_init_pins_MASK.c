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
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int CRTSCTS ; 
 int /*<<< orphan*/  SCPCR ; 
 int /*<<< orphan*/  SCPDR ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, unsigned int cflag)
{
	unsigned short data;

	/* We need to set SCPCR to enable RTS/CTS */
	data = FUNC1(SCPCR);
	/* Clear out SCP7MD1,0, SCP6MD1,0, SCP4MD1,0*/
	FUNC3(data & 0x0fcf, SCPCR);

	if (!(cflag & CRTSCTS)) {
		/* We need to set SCPCR to enable RTS/CTS */
		data = FUNC1(SCPCR);
		/* Clear out SCP7MD1,0, SCP4MD1,0,
		   Set SCP6MD1,0 = {01} (output)  */
		FUNC3((data & 0x0fcf) | 0x1000, SCPCR);

		data = FUNC0(SCPDR);
		/* Set /RTS2 (bit6) = 0 */
		FUNC2(data & 0xbf, SCPDR);
	}
}