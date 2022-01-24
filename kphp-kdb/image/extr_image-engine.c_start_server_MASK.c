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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
struct forth_request {scalar_t__ res; char* prog; int priority; int /*<<< orphan*/  prog_id; scalar_t__ size; scalar_t__ timeout; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 void* EXIT_FAILURE ; 
 scalar_t__ EXIT_SUCCESS ; 
 struct forth_request** HEAP ; 
 int /*<<< orphan*/  NB_alloc ; 
 int /*<<< orphan*/  NB_max ; 
 int /*<<< orphan*/  NB_used ; 
 scalar_t__* P ; 
 scalar_t__ REQ_RUNNING ; 
 int /*<<< orphan*/  RLIMIT_AS ; 
 int /*<<< orphan*/  RLIMIT_CPU ; 
 struct forth_request** RP ; 
 int /*<<< orphan*/  SA_NOCLDSTOP ; 
 int* SHM ; 
#define  SIGABRT 132 
 long long SIGCHLD ; 
 long long SIGHUP ; 
 long long SIGINT ; 
 int const SIGIO ; 
#define  SIGKILL 131 
 int const SIGPIPE ; 
 int SIGRTMAX ; 
#define  SIGSEGV 130 
#define  SIGTERM 129 
 long long SIGUSR1 ; 
#define  SIGXCPU 128 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  all_results_memory ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int child_process ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  complete_tasks ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,struct forth_request*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ct_image_engine_server ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 () ; 
 char* groupname ; 
 int /*<<< orphan*/  FUNC18 (struct forth_request*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ ,char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ FUNC26 () ; 
 scalar_t__ job_nice ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 scalar_t__ main_nice ; 
 int /*<<< orphan*/  main_sig_handler ; 
 scalar_t__ map_limit ; 
 int /*<<< orphan*/  max_load_image_area ; 
 int max_process_number ; 
 scalar_t__ max_virtual_memory ; 
 int /*<<< orphan*/  maxconn ; 
 int /*<<< orphan*/  memcache_methods ; 
 int /*<<< orphan*/  memory_limit ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  not_zero_exit_code ; 
 int now ; 
 long long pending_signals ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__ progname ; 
 int /*<<< orphan*/  FUNC31 (struct forth_request*) ; 
 int queue_size ; 
 scalar_t__ quit_steps ; 
 int /*<<< orphan*/  FUNC32 () ; 
 scalar_t__ result_living_time ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int sfd ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  sigabrt ; 
 int /*<<< orphan*/  sigabrt_child_handler ; 
 scalar_t__ FUNC36 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sigkill ; 
 int /*<<< orphan*/  FUNC40 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigother ; 
 int /*<<< orphan*/  sigsegv ; 
 int /*<<< orphan*/  sigsegv_child_handler ; 
 int /*<<< orphan*/  sigterm ; 
 int /*<<< orphan*/  sigterm_child_handler ; 
 int /*<<< orphan*/  sigxcpu ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,struct forth_request*) ; 
 int /*<<< orphan*/  stats_buffer ; 
 char* FUNC42 (char*) ; 
 scalar_t__ FUNC43 (char*) ; 
 int threads_limit ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC44 (int,char*,...) ; 
 int vmsize_limit ; 
 scalar_t__ FUNC45 (int,int*,int /*<<< orphan*/ ) ; 

void FUNC46 (void) {
  int i;
  int prev_time;

  FUNC23 ();
  FUNC25 ();

  prev_time = 0;

  FUNC22 ();
  FUNC44 (4, "progname: %s\n", progname);
  map_limit = 0;
  if (map_limit > max_virtual_memory) {
    map_limit = max_virtual_memory;
  }
  FUNC21 (progname, max_load_image_area, memory_limit, map_limit, 0, threads_limit);

  if (daemonize) {
    FUNC34 ();
    FUNC32 ();
  }

  if (FUNC5 (username, groupname) < 0) {
    FUNC28 ("fatal: cannot change user to %s, group to %s\n", username ? username : "(none)", groupname ? groupname : "(none)");
    FUNC12 (1);
  }

  if (!FUNC35 ()) {
    FUNC12 (1);
  }

  FUNC24 (sfd, &ct_image_engine_server, &memcache_methods);

  FUNC40 (SIGXCPU, SIG_DFL);
  FUNC40 (SIGPIPE, SIG_IGN);
  FUNC40 (SIGIO, SIG_IGN);

  sigset_t signal_set;
  FUNC38 (&signal_set);
  FUNC37 (&signal_set, SIGINT);
  FUNC37 (&signal_set, SIGTERM);
  FUNC37 (&signal_set, SIGUSR1);
  FUNC37 (&signal_set, SIGCHLD);
  if (daemonize) {
    FUNC37 (&signal_set, SIGHUP);
  }
  struct sigaction act;
  act.sa_handler = main_sig_handler;
  act.sa_mask = signal_set;
  act.sa_flags = SA_NOCLDSTOP;
  for (i = 1; i <= SIGRTMAX; i++) {
    if (FUNC39 (&signal_set, i)) {
      if (FUNC36 (i, &act, NULL) < 0) {
        FUNC28 ("sigaction (%d) failed. %m\n", i);
        FUNC12 (1);
      }
    }
  }

  if (verbosity > 0) {
    char *cwd = FUNC16 (stats_buffer, STATS_BUFF_SIZE - 10);
    if (cwd != NULL) {
      FUNC28 ("Current working directory: %s\n", cwd);
    }
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 1023)) {
      FUNC28 ("epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
          active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    FUNC11 (11);
    if (now != prev_time) {
      prev_time = now;
      FUNC9();
    }

    if (FUNC26 ()) {
      break;
    }

    if (pending_signals & (1LL << SIGCHLD)) {
      FUNC30 (&signal_set, SIGCHLD);
      FUNC44 (1, "got SIGCHLD.\n");
      //transaction_check_child_status ();
    }

    if (pending_signals & (1LL << SIGHUP)) {
      FUNC30 (&signal_set, SIGHUP);
      FUNC44 (1, "got SIGHUP.\n");
      //sync_binlog (2);
    }

    if (pending_signals & (1LL << SIGUSR1)) {
      FUNC30 (&signal_set, SIGUSR1);
      FUNC44 (1, "got SIGUSR1, rotate logs.\n");
      FUNC32 ();
      //sync_binlog (2);
    }

    while (child_process > 0) {
      int status;
      pid_t pid = FUNC45 (-1, &status, WNOHANG);
      if (pid <= 0) {
        break;
      }
      int j;
      for (j = 0; j < child_process; j++) {
        if (P[j] == pid) {
          char *error = NULL;
          complete_tasks++;
          struct forth_request *E = RP[j];
          E->res = EXIT_FAILURE;
          if (FUNC1(status)) {
            E->res = FUNC0(status);
            if (E->res != EXIT_SUCCESS) {
              E->res = EXIT_FAILURE;
              FUNC41 (&not_zero_exit_code, E);
            }
          } else if (FUNC2(status)) {
            int t = FUNC3(status);
            FUNC44 (3, "WTERMSIG(status): %d, pid: %d\n", t, (int) pid);
            switch (t) {
              case SIGABRT:
                FUNC41 (&sigabrt, E);
                error = "SIGABRT";
              break;
              case SIGSEGV:
                FUNC41 (&sigsegv, E);
                error = "SIGSEGV";
              break;
              case SIGKILL:
                FUNC41 (&sigkill, E);
                error = "SIGKILL";
              break;
              case SIGXCPU:
                FUNC41 (&sigxcpu, E);
                error = "SIGXCPU";
              break;
              case SIGTERM:
                FUNC41 (&sigterm, E);
                error = "SIGTERM";
              break;
              default:
                FUNC41 (&sigother, E);
                error = "SIGOTHER";
              break;
            }
          }
          if (E->prog != NULL) {
            FUNC15 (E->prog);
            E->size = 0;
          }
          --child_process;
          P[j] = P[child_process];
          RP[j] = RP[child_process];

          int tmp = SHM[j]; SHM[j] = SHM[child_process]; SHM[child_process] = tmp;
          if (error == NULL) {
            FUNC8 (E->prog_id, SHM[child_process], E);
          } else {
            E->size = FUNC43 (error);
            E->prog = FUNC42 (error);
            FUNC4 (E->prog);
            E->timeout = now + result_living_time;
            all_results_memory += E->size + 1;
            FUNC14 ();
          }
          FUNC31 (E);
          break;
        }
      }
    }

    for (i = 0; i < child_process; i++) {
      if (RP[i]->priority || FUNC6 (P[i]) > 0) {
        if (RP[i]->priority) {
          FUNC27 (P[i], SIGKILL);
        } else {
          FUNC27 (P[i], SIGTERM);
          RP[i]->priority |= 1;
        }
      }
    }

    while (child_process < max_process_number && queue_size > 0) {
      pid_t pid = FUNC13 ();
      struct forth_request *E = HEAP[1];
      FUNC4 (E->prog);
      queue_size--;
      if (!pid) {
        /* child process */
        FUNC40 (SIGTERM, sigterm_child_handler);
        FUNC40 (SIGSEGV, sigsegv_child_handler);
        FUNC40 (SIGABRT, sigabrt_child_handler);
        FUNC7 (sfd); sfd = -1; /* image-engine doesn't restart when port is busy */
        struct rlimit mlimit, cpu_limit;
        cpu_limit.rlim_cur = cpu_limit.rlim_max = 20 * threads_limit;
        if (FUNC33 (RLIMIT_CPU, &cpu_limit) < 0) {
          FUNC44 (1, "setrlimit (CPU_LIMIT (%lld,%lld)) fail. %m", (long long) cpu_limit.rlim_cur, (long long) cpu_limit.rlim_max);
        }
        mlimit.rlim_cur = mlimit.rlim_max = vmsize_limit;
        if (FUNC33 (RLIMIT_AS, &mlimit) < 0) {
          FUNC44 (1, "setrlimit (RLIMIT_AS (%lld,%lld)) fail. %m", (long long) mlimit.rlim_cur, (long long) mlimit.rlim_max);
        }
        if (job_nice > main_nice && FUNC29 (job_nice - main_nice) < 0) {
          FUNC44 (1, "nice (%d) fail. %m\n", job_nice - main_nice);
        }
        char *cmd = E->prog;
        int r = FUNC20 (E->prog_id, cmd, FUNC43 (cmd), (int) FUNC17 (), SHM[child_process]);
        FUNC19 (); //remove temporary files created by GraphicsMagick
        FUNC12 (r);
      } else {
        /* parent */
        E->priority = 0;
        P[child_process] = pid;
        RP[child_process] = E;
        child_process++;
        E->res = REQ_RUNNING;
        FUNC18 (HEAP[queue_size + 1], 1);
      }
    }
    if (quit_steps && !--quit_steps) break;
  }

  FUNC10 (sfd);
  FUNC7 (sfd);

  FUNC19 ();
  FUNC28 ("Main process terminated (pending_signals: 0x%llx).\n", pending_signals);
}