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
struct socketlist {int nr; int /*<<< orphan*/ * list; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;

/* Variables and functions */
#define  EAGAIN 130 
#define  ECONNABORTED 129 
#define  EINTR 128 
 int POLLIN ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  child_handler ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct pollfd* FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct socketlist *socklist)
{
	struct pollfd *pfd;
	int i;

	pfd = FUNC9(socklist->nr, sizeof(struct pollfd));

	for (i = 0; i < socklist->nr; i++) {
		pfd[i].fd = socklist->list[i];
		pfd[i].events = POLLIN;
	}

	FUNC6(SIGCHLD, child_handler);

	for (;;) {
		int i;

		FUNC1();

		if (FUNC5(pfd, socklist->nr, -1) < 0) {
			if (errno != EINTR) {
				FUNC4("Poll failed, resuming: %s",
				      FUNC8(errno));
				FUNC7(1);
			}
			continue;
		}

		for (i = 0; i < socklist->nr; i++) {
			if (pfd[i].revents & POLLIN) {
				union {
					struct sockaddr sa;
					struct sockaddr_in sai;
#ifndef NO_IPV6
					struct sockaddr_in6 sai6;
#endif
				} ss;
				socklen_t sslen = sizeof(ss);
				int incoming = FUNC0(pfd[i].fd, &ss.sa, &sslen);
				if (incoming < 0) {
					switch (errno) {
					case EAGAIN:
					case EINTR:
					case ECONNABORTED:
						continue;
					default:
						FUNC2("accept returned");
					}
				}
				FUNC3(incoming, &ss.sa, sslen);
			}
		}
	}
}