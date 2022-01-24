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
struct timeval {long tv_sec; int tv_usec; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct timeval* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC10(int argc, char **argv)
{
#ifdef EVENT__HAVE_SETRLIMIT
	struct rlimit rl;
#endif
	int i, c;
	struct timeval *tv;

	int num_pipes = 100;
#ifdef _WIN32
	WSADATA WSAData;
	WSAStartup(0x101, &WSAData);
#endif

	while ((c = FUNC6(argc, argv, "n:")) != -1) {
		switch (c) {
		case 'n':
			num_pipes = FUNC2(optarg);
			break;
		default:
			FUNC5(stderr, "Illegal argument \"%c\"\n", c);
			FUNC4(1);
		}
	}

#ifdef EVENT__HAVE_SETRLIMIT
	rl.rlim_cur = rl.rlim_max = num_pipes * 2 + 50;
	if (setrlimit(RLIMIT_NOFILE, &rl) == -1) {
		perror("setrlimit");
		exit(1);
	}
#endif

	FUNC3();

	for (i = 0; i < 25; i++) {
		tv = FUNC8(num_pipes);
		if (tv == NULL)
			FUNC4(1);
		FUNC5(stdout, "%d\n",
			tv->tv_sec * 1000000L + tv->tv_usec);
	}

#ifdef _WIN32
	WSACleanup();
#endif

	FUNC4(0);
}