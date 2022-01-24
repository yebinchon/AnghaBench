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
struct TYPE_2__ {void* port; } ;

/* Variables and functions */
 scalar_t__ MAX_CONNECTIONS ; 
 TYPE_1__ PID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 void* medium_delay ; 
 void* optarg ; 
 int optind ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* slow_delay ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC14 (int argc, char *argv[]) {
  int i;

  FUNC9 ();

  char encr_file[256];
  int custom_encr = 0;
  progname = argv[0];
  char network_desc_file[256];
  while ((i = FUNC5 (argc, argv, "vdc:E:p:N:hu:l:S:M:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'c':
      maxconn = FUNC2(optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'E':
      FUNC11 (encr_file, optarg, 255);
      custom_encr = 1;
      break;
    case 'N':
      FUNC11 (network_desc_file, optarg, 255);
      break;
    case 'p':
      port = FUNC2(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'S':
      slow_delay = FUNC1(optarg);
      break;
    case 'M':
      medium_delay = FUNC1(optarg);
      break;
    case 'h':
      FUNC13 ();
      FUNC3 (1);
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind) {
    FUNC13();
    return 2;
  }

  if (FUNC7(maxconn + 16) < 0) {
    FUNC4 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn+16);
    FUNC3(1);
  }
  FUNC6();

  FUNC8 (network_desc_file);
  PID.port = port;


  if (!custom_encr) {
    FUNC0 (0);
  } else {
    FUNC0 (encr_file);
  }

  start_time = FUNC12(0);

  FUNC10();

  return 0;
}