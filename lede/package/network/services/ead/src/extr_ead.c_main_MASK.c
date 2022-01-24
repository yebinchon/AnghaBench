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
typedef  int /*<<< orphan*/  u16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct ead_instance {int /*<<< orphan*/  id; int /*<<< orphan*/  list; int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* dev_name ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ ethmac ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int FUNC10 (int,char**,char*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  instances ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ead_instance* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ead_instance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nid ; 
 int nonfork ; 
 int FUNC15 (char const*,int,...) ; 
 void* optarg ; 
 void* passwd_file ; 
 int /*<<< orphan*/  server_handle_sigchld ; 
 int /*<<< orphan*/  server_handle_sigint ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,int) ; 

int FUNC24(int argc, char **argv)
{
	struct ead_instance *in;
	struct timeval tv;
	const char *pidfile = NULL;
	bool background = false;
	int n_iface = 0;
	int fd, ch;

	if (argc == 1)
		return FUNC22(argv[0]);

	FUNC0(&instances);
	while ((ch = FUNC10(argc, argv, "Bd:D:fhp:P:")) != -1) {
		switch(ch) {
		case 'B':
			background = true;
			break;
		case 'f':
			nonfork = true;
			break;
		case 'h':
			return FUNC22(argv[0]);
		case 'd':
			in = FUNC13(sizeof(struct ead_instance));
			FUNC14(in, 0, sizeof(struct ead_instance));
			FUNC0(&in->list);
			FUNC20(in->ifname, optarg, sizeof(in->ifname) - 1);
			FUNC12(&in->list, &instances);
			in->id = n_iface++;
			break;
		case 'D':
			dev_name = optarg;
			break;
		case 'p':
			passwd_file = optarg;
			break;
		case 'P':
			pidfile = optarg;
			break;
		}
	}
	FUNC16(SIGCHLD, server_handle_sigchld);
	FUNC16(SIGINT, server_handle_sigint);
	FUNC16(SIGTERM, server_handle_sigint);
	FUNC16(SIGKILL, server_handle_sigint);

	if (!n_iface) {
		FUNC8(stderr, "Error: ead needs at least one interface\n");
		return -1;
	}

	if (background) {
		if (FUNC7() > 0)
			FUNC6(0);

		fd = FUNC15("/dev/null", O_RDWR);
		FUNC5(fd, 0);
		FUNC5(fd, 1);
		FUNC5(fd, 2);
	}

	if (pidfile) {
		char pid[8];
		int len;

		FUNC21(pidfile);
		fd = FUNC15(pidfile, O_CREAT|O_WRONLY|O_EXCL, 0644);
		if (fd > 0) {
			len = FUNC18(pid, "%d\n", FUNC11());
			FUNC23(fd, pid, len);
			FUNC4(fd);
		}
	}

	/* randomize the mac address */
	FUNC9(ethmac + 3, 3);
	nid = *(((u16_t *) ethmac) + 2);

	FUNC19(false);
	FUNC1();
	tv.tv_sec = 1;
	tv.tv_usec = 0;
	while (1) {
		FUNC3();
		FUNC19(true);
		FUNC17(1);
	}
	FUNC2();

	return 0;
}