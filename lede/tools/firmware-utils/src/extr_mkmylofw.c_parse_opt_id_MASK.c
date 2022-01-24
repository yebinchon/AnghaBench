#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ rev; scalar_t__ sdid; scalar_t__ did; scalar_t__ svid; scalar_t__ vid; } ;

/* Variables and functions */
 int MAX_ARG_COUNT ; 
 int MAX_ARG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ fw_header ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (char,char*) ; 
 scalar_t__ FUNC5 (char*,scalar_t__*) ; 
 scalar_t__ FUNC6 (char*,scalar_t__*) ; 

int
FUNC7(char ch, char *arg)
{
	char buf[MAX_ARG_LEN];
	char *argv[MAX_ARG_COUNT];
	int argc;
	char *p;

	if (FUNC4(ch, arg)) {
		goto err_out;
	}

	argc = FUNC3(arg, buf, argv);

	/* processing vendor ID*/
	p = argv[0];
	if (FUNC2(p)) {
		FUNC1(0,"vendor id is missing from -%c %s",ch, arg);
		goto err_out;
	} else if (FUNC5(p, &fw_header.vid) != 0) {
		FUNC1(0,"invalid vendor id: %s", p);
		goto err_out;
	}

	FUNC0(1, "vendor id is set to 0x%04X", fw_header.vid);

	/* processing device ID*/
	p = argv[1];
	if (FUNC2(p)) {
		FUNC1(0,"device id is missing from -%c %s",ch, arg);
		goto err_out;
	} else if (FUNC5(p, &fw_header.did) != 0) {
		FUNC1(0,"invalid device id: %s", p);
		goto err_out;
	}

	FUNC0(1, "device id is set to 0x%04X", fw_header.did);

	/* processing sub vendor ID*/
	p = argv[2];
	if (FUNC2(p)) {
		fw_header.svid = fw_header.vid;
	} else if (FUNC5(p, &fw_header.svid) != 0) {
		FUNC1(0,"invalid sub vendor id: %s", p);
		goto err_out;
	}

	FUNC0(1, "sub vendor id is set to 0x%04X", fw_header.svid);

	/* processing device ID*/
	p = argv[3];
	if (FUNC2(p)) {
		fw_header.sdid = fw_header.did;
	} else if (FUNC5(p, &fw_header.sdid) != 0) {
		FUNC1(0,"invalid sub device id: %s", p);
		goto err_out;
	}

	FUNC0(1, "sub device id is set to 0x%04X", fw_header.sdid);

	/* processing revision */
	p = argv[4];
	if (FUNC2(p)) {
		fw_header.rev = 0;
	} else if (FUNC6(arg, &fw_header.rev) != 0) {
		FUNC1(0,"invalid revision number: %s", p);
		goto err_out;
	}

	FUNC0(1, "board revision is set to 0x%08X", fw_header.rev);

	return 0;

err_out:
	return -1;
}