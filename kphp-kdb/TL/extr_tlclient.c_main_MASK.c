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
struct TYPE_3__ {struct in_addr target; void* port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 void* BACKLOG ; 
 scalar_t__ MAX_CONNECTIONS ; 
 scalar_t__ additional ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ auth_key_id ; 
 void* backlog ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  compiler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ daemonize ; 
 TYPE_1__ default_ct ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct hostent* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* optarg ; 
 int optind ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  rl_attempted_completion_function ; 
 scalar_t__ session_id ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,void*,int) ; 
 int /*<<< orphan*/  targ ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_completion ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unserialize_buff ; 
 int /*<<< orphan*/  FUNC20 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC21 (int,char*,scalar_t__,scalar_t__) ; 

int FUNC22 (int argc, char *argv[]) {
  int i;
  FUNC12 ();
  progname = argv[0];
  daemonize = 0;
  errno = 0;
  while ((i = FUNC6 (argc, argv, "A:S:a:b:c:l:p:dhu:v")) != -1) {
    switch (i) {
    case 'A':
      FUNC13 (optarg, "%16llx", &auth_key_id);
      break;
    case 'S':
      FUNC13 (optarg, "%16llx", &session_id);
      break;
    case 'a':
      FUNC15 (hostname, optarg, 255);
      break;
    case 'b':
      backlog = FUNC1(optarg);
      if (backlog <= 0) backlog = BACKLOG;
      break;
    case 'c':
      maxconn = FUNC1 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'h':
      FUNC20();
      return 2;
    case 'l':
      logname = optarg;
      break;
    case 'p':
      default_ct.port = port = FUNC1(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    }
  }

  if (argc != optind + 1) {
    FUNC20 ();
  }

  if (auth_key_id == 0) {
    additional = 0;
  }

  FUNC21 (4, "auth_key_id: 0x%llx, session_id: 0x%llx\n", auth_key_id, session_id);

  FUNC7 ();

  if (FUNC10 (maxconn + 16) < 0) {
    FUNC8 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC4 (1);
  }

  FUNC0 (0);

  if (FUNC2 (username) < 0) {
    FUNC8 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC4 (1);
  }

  FUNC9 ();

  start_time = FUNC16 (0);

  struct hostent *h;
  if (!(h = FUNC5 (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    FUNC8 ("cannot resolve %s\n", hostname);
    FUNC4 (2);
  }
  default_ct.target = *((struct in_addr *) h->h_addr);

  targ = FUNC3 (&default_ct, 0);

  if (FUNC18 (&compiler, argv[optind]) < 0) {
    FUNC8 ("Error in \"%s\"\n", argv[optind]);
    FUNC17 (&compiler, stderr);
    FUNC4 (1);
  }

  rl_attempted_completion_function = tl_completion;

  FUNC19 (&unserialize_buff);

  FUNC11 ();

  FUNC14 ();

  return 0;
}