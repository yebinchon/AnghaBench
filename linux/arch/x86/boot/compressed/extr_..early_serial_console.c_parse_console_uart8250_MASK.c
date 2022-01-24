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
typedef  int /*<<< orphan*/  optstr ;

/* Variables and functions */
 int DEFAULT_BAUD ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	char optstr[64], *options;
	int baud = DEFAULT_BAUD;
	int port = 0;

	/*
	 * console=uart8250,io,0x3f8,115200n8
	 * need to make sure it is last one console !
	 */
	if (FUNC0("console", optstr, sizeof(optstr)) <= 0)
		return;

	options = optstr;

	if (!FUNC4(options, "uart8250,io,", 12))
		port = FUNC3(options + 12, &options, 0);
	else if (!FUNC4(options, "uart,io,", 8))
		port = FUNC3(options + 8, &options, 0);
	else
		return;

	if (options && (options[0] == ','))
		baud = FUNC3(options + 1, &options, 0);
	else
		baud = FUNC2(port);

	if (port)
		FUNC1(port, baud);
}