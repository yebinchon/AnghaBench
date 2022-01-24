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
 void* BACKLOG ; 
 void* MAX_CONNECTIONS ; 
 int /*<<< orphan*/  PASSWORD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 void* backlog ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* logname ; 
 void* maxconn ; 
 void* optarg ; 
 int optind ; 
 char* password_filename ; 
 void* port ; 
 char* progname ; 
 int /*<<< orphan*/  random_engine ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC11 (int argc, char *argv[]) {
  char c;
  long long x;
  int i, key_len = 2048, buffer_size = 0;

  FUNC6 ();
  daemonize = 1;

  progname = argv[0];
  while ((i = FUNC3 (argc, argv, "N:b:c:dhl:p:s:u:v")) != -1) {
    switch (i) {
    case 'N':
      key_len = FUNC1 (optarg);
      break;
    case 'b':
      backlog = FUNC1 (optarg);
      if (backlog <= 0) {
        backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = FUNC1 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'd':
      daemonize ^= 1;
      break;
    case 'h':
      FUNC10 ();
      break;
    case 'l':
      logname = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    case 'p':
      port = FUNC1 (optarg);
      break;
    case 's':
       c = 0;
       FUNC0 (FUNC7 (optarg, "%lld%c", &x, &c) >= 1);
       switch (c | 0x20) {
         case 'k':  x <<= 10; break;
         case 'm':  x <<= 20; break;
         case 'g':  x <<= 30; break;
         case 't':  x <<= 40; break;
         default: FUNC0 (c == 0x20);
       }
       if (x >= 1024 && x < (1LL << 30)) {
         buffer_size = x;
       }
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind + 1 != argc) {
    FUNC4 ("<password-file> wasn't given\n");
    FUNC10 ();
  }

  password_filename = argv[optind];

  FUNC2 (&random_engine, 0, 0);

  start_time = FUNC9 (0);

  FUNC5 (2048, buffer_size, password_filename, PASSWORD_LENGTH);

  FUNC8 ();
  return 0;
}