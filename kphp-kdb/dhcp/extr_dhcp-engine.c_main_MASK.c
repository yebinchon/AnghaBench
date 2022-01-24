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
 scalar_t__ DEBUG_FILEDUMP ; 
 scalar_t__ DEBUG_UDPDUMP ; 
 scalar_t__ DHCP_PORT ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ debug_mode ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* maxconn ; 
 int /*<<< orphan*/  no_argument ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,char*) ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* username ; 

int FUNC16 (int argc, char *argv[]) {
  FUNC12 ();
  progname = argv[0];

  FUNC10 ("debug-udpdump", no_argument, 0, 'U', "listen 67/68 ports and dump received packets to the log");
  FUNC10 ("debug-filedump", no_argument, 0, 'F', "parse packet from file (filename is given in <config> parameter) and exit");

  FUNC9 (argc, argv, f_parse_option);

  if (argc != optind + 1) {
    FUNC15 ();
  }

  if (debug_mode == DEBUG_FILEDUMP) {
    FUNC3 ((FUNC4 (argv[optind]) < 0) ? 1 : 0);
  }

  if (!port || debug_mode == DEBUG_UDPDUMP) {
    port = DHCP_PORT;
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    FUNC8 ();
  }

  if (FUNC11 (maxconn + 16) < 0) {
    FUNC7 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC3 (1);
  }

  FUNC0 (0); //srand48

  if (FUNC1 (username) < 0) {
    FUNC7 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3 (1);
  }

  FUNC5 ();
  FUNC6 (0);

  if (FUNC2 (argv[optind]) < 0) {
    FUNC7 ("fatal: fail to load config file '%s'.\n", argv[optind]);
    FUNC3 (1);
  }

  start_time = FUNC14 (NULL);
  FUNC13 ();
  return 0;
}