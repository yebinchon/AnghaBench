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
 scalar_t__ CLIENT ; 
 scalar_t__ SERVER ; 
 char* TFTP_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* input_filename ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  max_port ; 
 char* maxconn ; 
 int /*<<< orphan*/  min_port ; 
 scalar_t__ FUNC9 (char*) ; 
 int optind ; 
 char* output_filename ; 
 int /*<<< orphan*/  FUNC10 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*,...) ; 
 char* port ; 
 char* progname ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int /*<<< orphan*/  required_argument ; 
 scalar_t__ server_sfd ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* source_dirname ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* username ; 
 scalar_t__ working_mode ; 

int FUNC18 (int argc, char *argv[]) {
  FUNC14 ();
  progname = argv[0];

  FUNC13 ('r'); //disable replica (no binlogs)
  FUNC13 ('a');
  FUNC13 ('B');

  FUNC11 ("server-port-range", required_argument, 0, 'R', "sets server port's range. Default range is '%d-%d'. Every UDP connection use one port.", min_port, max_port);
  FUNC11 ("client-blksize", required_argument, 0, 'B', "sets packet block size");
  FUNC11 ("client-timeout", required_argument, 0, 'T', "sets timeout in seconds");
  FUNC11 ("stats-port", required_argument, 0, 'P', "sets port for getting stats using memcache queries");
  FUNC10 (argc, argv, f_parse_option);

  if (argc == optind + 1) {
    working_mode = SERVER;
    source_dirname = argv[optind];
  } else if (argc == optind + 2) {
    input_filename = argv[optind];
    output_filename = argv[optind+1];
    FUNC3 ();
    working_mode = CLIENT;
  } else {
    FUNC17 ();
  }

  FUNC6 ();

  if (!port) {
    port = TFTP_PORT;
  }

  if (working_mode == SERVER) {
    server_sfd = FUNC9 (port);
    if (server_sfd < 0) {
      FUNC8 ("Fail to open UDP server socket on the port %d.\n", port);
      FUNC4 (1);
    }
  }

  if (FUNC12 (maxconn + 16) < 0) {
    FUNC8 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC4 (1);
  }

  FUNC0 (0); //srand48

  if (FUNC1 (username) < 0) {
    FUNC8 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC4 (1);
  }

  FUNC5 ();
  if (working_mode == SERVER) {
    if (FUNC2 () < 0) {
      FUNC4 (1);
    }
  }
  FUNC7 (0);
  start_time = FUNC16 (NULL);
  FUNC15 ();
  return 0;
}