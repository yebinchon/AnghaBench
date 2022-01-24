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
struct switch_val {int port_vlan; } ;
struct switch_dev {int ports; int vlans; } ;
struct switch_attr {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  CMD_GET 133 
#define  CMD_HELP 132 
#define  CMD_LOAD 131 
 int CMD_NONE ; 
#define  CMD_PORTMAP 130 
#define  CMD_SET 129 
#define  CMD_SHOW 128 
 int /*<<< orphan*/  SWITCH_TYPE_NOVAL ; 
 int /*<<< orphan*/  SWLIB_ATTR_GROUP_GLOBAL ; 
 int /*<<< orphan*/  SWLIB_ATTR_GROUP_PORT ; 
 int /*<<< orphan*/  SWLIB_ATTR_GROUP_VLAN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct switch_attr*,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (struct switch_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct switch_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct switch_dev*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct switch_dev*,char*) ; 
 struct switch_dev* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct switch_dev*) ; 
 int FUNC14 (struct switch_dev*,struct switch_attr*,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct switch_attr* FUNC16 (struct switch_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct switch_dev*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct switch_dev*) ; 
 int FUNC19 (struct switch_dev*,struct switch_attr*,int,char*) ; 

int FUNC20(int argc, char **argv)
{
	int retval = 0;
	struct switch_dev *dev;
	struct switch_attr *a;
	struct switch_val val;
	int i;

	int cmd = CMD_NONE;
	char *cdev = NULL;
	int cport = -1;
	int cvlan = -1;
	char *ckey = NULL;
	char *cvalue = NULL;
	char *csegment = NULL;

	if((argc == 2) && !FUNC10(argv[1], "list")) {
		FUNC15();
		return 0;
	}

	if(argc < 4)
		FUNC5();

	if(FUNC10(argv[1], "dev"))
		FUNC5();

	cdev = argv[2];

	for(i = 3; i < argc; i++)
	{
		char *arg = argv[i];
		if (cmd != CMD_NONE) {
			FUNC5();
		} else if (!FUNC10(arg, "port") && i+1 < argc) {
			cport = FUNC0(argv[++i]);
		} else if (!FUNC10(arg, "vlan") && i+1 < argc) {
			cvlan = FUNC0(argv[++i]);
		} else if (!FUNC10(arg, "help")) {
			cmd = CMD_HELP;
		} else if (!FUNC10(arg, "set") && i+1 < argc) {
			cmd = CMD_SET;
			ckey = argv[++i];
			if (i+1 < argc)
				cvalue = argv[++i];
		} else if (!FUNC10(arg, "get") && i+1 < argc) {
			cmd = CMD_GET;
			ckey = argv[++i];
		} else if (!FUNC10(arg, "load") && i+1 < argc) {
			if ((cport >= 0) || (cvlan >= 0))
				FUNC5();
			cmd = CMD_LOAD;
			ckey = argv[++i];
		} else if (!FUNC10(arg, "portmap")) {
			if (i + 1 < argc)
				csegment = argv[++i];
			cmd = CMD_PORTMAP;
		} else if (!FUNC10(arg, "show")) {
			cmd = CMD_SHOW;
		} else {
			FUNC5();
		}
	}

	if (cmd == CMD_NONE)
		FUNC5();
	if (cport > -1 && cvlan > -1)
		FUNC5();

	dev = FUNC12(cdev);
	if (!dev) {
		FUNC1(stderr, "Failed to connect to the switch. Use the \"list\" command to see which switches are available.\n");
		return 1;
	}

	FUNC18(dev);

	if (cmd == CMD_GET || cmd == CMD_SET) {
		if(cport > -1)
			a = FUNC16(dev, SWLIB_ATTR_GROUP_PORT, ckey);
		else if(cvlan > -1)
			a = FUNC16(dev, SWLIB_ATTR_GROUP_VLAN, ckey);
		else
			a = FUNC16(dev, SWLIB_ATTR_GROUP_GLOBAL, ckey);

		if(!a)
		{
			FUNC1(stderr, "Unknown attribute \"%s\"\n", ckey);
			retval = -1;
			goto out;
		}
	}

	switch(cmd)
	{
	case CMD_SET:
		if ((a->type != SWITCH_TYPE_NOVAL) &&
				(cvalue == NULL))
			FUNC5();

		if(cvlan > -1)
			cport = cvlan;

		retval = FUNC19(dev, a, cport, cvalue);
		if (retval < 0)
		{
			FUNC3(-retval, "Failed to set attribute");
			goto out;
		}
		break;
	case CMD_GET:
		if(cvlan > -1)
			val.port_vlan = cvlan;
		if(cport > -1)
			val.port_vlan = cport;
		retval = FUNC14(dev, a, &val);
		if (retval < 0)
		{
			FUNC3(-retval, "Failed to get attribute");
			goto out;
		}
		FUNC4(a, &val);
		FUNC6('\n');
		break;
	case CMD_LOAD:
		FUNC11(dev, ckey);
		break;
	case CMD_HELP:
		FUNC2(dev);
		break;
	case CMD_PORTMAP:
		FUNC17(dev, csegment);
		break;
	case CMD_SHOW:
		if (cport >= 0 || cvlan >= 0) {
			if (cport >= 0)
				FUNC8(dev, cport);
			else
				FUNC9(dev, cvlan, false);
		} else {
			FUNC7(dev);
			for (i=0; i < dev->ports; i++)
				FUNC8(dev, i);
			for (i=0; i < dev->vlans; i++)
				FUNC9(dev, i, true);
		}
		break;
	}

out:
	FUNC13(dev);
	return retval;
}