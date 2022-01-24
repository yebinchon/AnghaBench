#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;
struct TYPE_5__ {void* port; } ;
struct TYPE_4__ {void* port; struct in_addr target; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ MAX_CONNECTIONS ; 
 TYPE_3__ PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int daemonize ; 
 TYPE_1__ default_ct ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 struct hostent* FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* logname ; 
 int /*<<< orphan*/  main_targ ; 
 scalar_t__ maxconn ; 
 void* optarg ; 
 int optind ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* server_port ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC16 (int argc, char *argv[]) {
  int i;

  FUNC11 ();

  progname = argv[0];

  char encr_file[256];
  char network_desc_file[256];
  int custom_encr = 0;


  while ((i = FUNC7 (argc, argv, "vdc:a:p:E:P:N:u:l:")) != -1) {
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
    case 'a':
      FUNC13 (hostname, optarg, 255);
      break;
    case 'p':
      port = FUNC2(optarg);
      break;
    case 'P':
      server_port = FUNC2(optarg);
      break;
    case 'E':
      FUNC13 (encr_file, optarg, 255);
      custom_encr = 1;
      break;
    case 'N':
      FUNC13 (network_desc_file, optarg, 255);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'h':
      FUNC15 ();
      return 2;
    case 'd':
      daemonize ^= 1;
    }
  }
  
  PID.port = port;

  if (argc <= optind) {
    FUNC15();
    return 2;
  }




  if (FUNC9(maxconn + 16) < 0) {
    FUNC5 (stderr, "fatal: cannot raise open file limit to %s\n", maxconn+16);
    FUNC4(1);
  }

  if (!custom_encr) {
    FUNC1 (0);
  } else {
    FUNC1 (encr_file);
  }

  FUNC8();

  for (i = optind; i < argc; i++) {
    FUNC0 (0, 0, argv[i], 0);
  }

  FUNC10 (network_desc_file);

  start_time = FUNC14(0);
  
  struct hostent *h;
  if (!(h = FUNC6 (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    FUNC5 (stderr, "cannot resolve %s\n", hostname);
    FUNC4 (2);
  }
  default_ct.target = *((struct in_addr *) h->h_addr);
  default_ct.port = server_port;

  main_targ = FUNC3 (&default_ct, 0);

  FUNC12();

  return 0;
}