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
 int MAX_CONNECTIONS ; 
 int PRIVILEGED_TCP_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  interactive ; 
 int maxconn ; 
 int /*<<< orphan*/  no_argument ; 
 void* now ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,char*,...) ; 
 int port ; 
 char* progname ; 
 int /*<<< orphan*/  queue_port ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  required_argument ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 () ; 
 void* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ use_stemmer ; 
 char* username ; 
 int /*<<< orphan*/  watchcat_parse_option ; 

int FUNC20 (int argc, char *argv[]) {
  FUNC2 ();
  progname = argv[0];
  now = FUNC18 (NULL);

  FUNC14 ('a');
  FUNC14 ('B');
  FUNC14 ('r');
  FUNC14 (204);
  FUNC12 ("memory-limit", required_argument, NULL, 'm', "<memory-limit> sets maximal size of used memory not including zmemory in mebibytes");
  FUNC12 ("queue-port", required_argument, 0, 'P', "<port> port number for communication with queue (default %d)", queue_port);
  FUNC12 ("lock-memory", no_argument, NULL, 'k', "lock paged memory");
  FUNC12 ("stemmer", no_argument, 0, 'S', "enable stemmer");

  FUNC11 (argc, argv, watchcat_parse_option);
  if (argc != optind) {
    FUNC19();
    return 2;
  }

  FUNC10();
  FUNC3();
  if (use_stemmer) {
    FUNC17();
  }

  dynamic_data_buffer_size = (1 << 20);
  FUNC9();

  if (!username && maxconn == MAX_CONNECTIONS && FUNC7()) {
    maxconn = 1000; //not for root
  }

  if (FUNC13 (maxconn + 16) < 0) {
    FUNC5 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC4 (1);
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = FUNC15 (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      FUNC5 (stderr, "cannot open server socket at port %d: %m\n", port);
      FUNC4 (1);
    }
  }

  FUNC0 (NULL);

  if (FUNC1 (username) < 0 && !interactive) {
    FUNC5 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC4 (1);
  }

  FUNC8();
  start_time = FUNC18 (NULL);

  FUNC16();

  FUNC6();
  return 0;
}