#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; struct in_addr target; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int NB_alloc ; 
 int NB_max ; 
 int NB_used ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  VB ; 
 int active_connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ daemonize ; 
 TYPE_1__ default_ct ; 
 scalar_t__ disable_log ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC8 (char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int now ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  port ; 
 scalar_t__ query_log ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  sighup_handler ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int /*<<< orphan*/  sigusr1_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ stat_log ; 
 int /*<<< orphan*/  stderr ; 
 char* suffix ; 
 int /*<<< orphan*/  test_mode ; 
 char* username ; 
 scalar_t__ verbosity ; 

void FUNC15 (void) { 
  int i;
  int prev_time;
  struct hostent *h;

  FUNC9();
  FUNC10();

  prev_time = 0;

  if (daemonize) {
    FUNC12();
  }

  if (FUNC1(username) < 0 && !interactive && !test_mode) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC6(1);
  }

  FUNC14 (VB, "disable%s.bin", suffix);
  disable_log = FUNC11 (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);
  FUNC14 (VB, "query%s.bin", suffix);
  query_log = FUNC11 (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);
  FUNC14 (VB, "stat%s.bin", suffix);
  stat_log = FUNC11 (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);

  FUNC0 (disable_log >= 0 && query_log >= 0 && stat_log >= 0);

  if (!(h = FUNC8 (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    FUNC7 (stderr, "fatal: cannot resolve hostname %s: %m\n", hostname);
    FUNC6 (1);                                       
  }

  default_ct.target = *(struct in_addr *) h->h_addr;
  default_ct.port = port;
  conn = FUNC3 (&default_ct, 0);

  FUNC2 ();

  FUNC13(SIGINT, sigint_handler);
  FUNC13(SIGTERM, sigterm_handler);
  FUNC13(SIGUSR1, sigusr1_handler);
  if (daemonize) {
    FUNC13(SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      FUNC7 (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
	       active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    FUNC5 (57);
    if (now != prev_time) {
      prev_time = now;
      FUNC4();
    }
    if (quit_steps && !--quit_steps) break;
  }

}