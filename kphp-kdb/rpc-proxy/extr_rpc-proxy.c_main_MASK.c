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
struct TYPE_2__ {scalar_t__ port; } ;

/* Variables and functions */
 TYPE_1__ PID ; 
 int /*<<< orphan*/  PING_INTERVAL ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_pwd_file ; 
 int /*<<< orphan*/  backlog ; 
 scalar_t__ bname ; 
 char* config_filename ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ enable_ipv6 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int maxconn ; 
 int /*<<< orphan*/  no_argument ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*,...) ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 int /*<<< orphan*/  required_argument ; 
 int rpc_disable_crc32_check ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  test_mode ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ usfd ; 
 int /*<<< orphan*/  FUNC18 (int,char*) ; 

int FUNC19 (int argc, char *argv[]) {
  rpc_disable_crc32_check = 1;
  int i;

  FUNC14 ();

  progname = argv[0];

  FUNC12 ('B');
  FUNC9 ("first-cluster-only", required_argument, 0, 'f', "only first cluster");
  FUNC9 ("test-mode", no_argument, 0, 'T', 0);
  FUNC9 ("tcp-buffers", no_argument, 0, 'N', "new tcp buffers");
  FUNC9 ("crc32-mode", required_argument, 0, 'C', "crc32 mode: bit 0 disables crc32 check, bit 1 disables crc32 send (sends 0)");
  FUNC9 ("heap-size", required_argument, 0, 'H', "sets heap size. Supports K/M/G/T modifiers");
  FUNC9 ("max-binlog-size", required_argument, 0, 'S', "sets maximal binlog slice size. Supports K/M/G/T modifiers");
  FUNC9 ("ping-interval", required_argument, 0, 'y', "sets ping interval (only in tcp connections) (default %lf)", PING_INTERVAL);
  FUNC9 ("binlog-enable", required_argument, 0, 'B', "enables binlog mode. argument is binlog name");
  FUNC9 ("drop-probability", required_argument, 0, 'Q', "sets probability of dropping transmitted packet");
  FUNC9 (0, required_argument, 0, 'n', "sets niceness");

  FUNC8 (argc, argv, f_parse_option);
  if (argc != optind + 1) {
    FUNC17();
    return 2;
  }

  PID.port = port;
  FUNC5 ();
  FUNC6 (FUNC4 (), port);

  if (FUNC10 (maxconn + 16) < 0 && !test_mode) {
    FUNC3 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC2 (1);
  }

  config_filename = argv[optind];

  i = FUNC1 (0);

  if (i < 0) {
    FUNC3 (stderr, "config check failed!\n");
    return -i;
  }

  FUNC18 (1, "config loaded!\n");

  FUNC0 (aes_pwd_file);

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = FUNC13 (port, settings_addr, backlog, enable_ipv6);
    if (sfd < 0) {
      FUNC7 ("cannot open server socket at port %d: %m\n", port);
      FUNC2 (1);
    }
    usfd = FUNC13 (port, settings_addr, backlog, enable_ipv6 + 1);
    if (usfd < 0) {
      FUNC7 ("cannot open udp server socket at port %d: %m\n", port);
      FUNC2 (1);
    }
  }

  if (bname) {
    FUNC11 (bname);
  }
  start_time = FUNC16 (0);

  FUNC15 ();

  return 0;
}