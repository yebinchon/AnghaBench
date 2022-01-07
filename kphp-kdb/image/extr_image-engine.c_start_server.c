
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
struct forth_request {scalar_t__ res; char* prog; int priority; int prog_id; scalar_t__ size; scalar_t__ timeout; } ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;


 void* EXIT_FAILURE ;
 scalar_t__ EXIT_SUCCESS ;
 struct forth_request** HEAP ;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 scalar_t__* P ;
 scalar_t__ REQ_RUNNING ;
 int RLIMIT_AS ;
 int RLIMIT_CPU ;
 struct forth_request** RP ;
 int SA_NOCLDSTOP ;
 int* SHM ;

 long long SIGCHLD ;
 long long SIGHUP ;
 long long SIGINT ;
 int const SIGIO ;

 int const SIGPIPE ;
 int SIGRTMAX ;


 long long SIGUSR1 ;

 int SIG_DFL ;
 int SIG_IGN ;
 scalar_t__ STATS_BUFF_SIZE ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int active_connections ;
 int all_results_memory ;
 int assert (char*) ;
 scalar_t__ change_user_group (char*,char*) ;
 scalar_t__ child_check_limits (scalar_t__) ;
 int child_process ;
 int close (int) ;
 int complete_tasks ;
 int copy_shared_memory_output (int ,int,struct forth_request*) ;
 int cron () ;
 int ct_image_engine_server ;
 scalar_t__ daemonize ;
 int epoll_close (int) ;
 int epoll_work (int) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int forth_request_run_output_gc () ;
 int free (char*) ;
 char* getcwd (int ,scalar_t__) ;
 scalar_t__ getpid () ;
 char* groupname ;
 int heapify_front (struct forth_request*,int) ;
 int image_done () ;
 int image_exec (int ,char*,scalar_t__,int,int) ;
 int image_init (scalar_t__,int ,int ,scalar_t__,int ,int) ;
 int image_reserved_words_hashtable_init () ;
 int init_epoll () ;
 int init_listening_connection (int,int *,int *) ;
 int init_netbuffers () ;
 scalar_t__ interrupted_by_signal () ;
 scalar_t__ job_nice ;
 int kill (scalar_t__,int const) ;
 int kprintf (char*,...) ;
 scalar_t__ main_nice ;
 int main_sig_handler ;
 scalar_t__ map_limit ;
 int max_load_image_area ;
 int max_process_number ;
 scalar_t__ max_virtual_memory ;
 int maxconn ;
 int memcache_methods ;
 int memory_limit ;
 scalar_t__ nice (scalar_t__) ;
 int not_zero_exit_code ;
 int now ;
 long long pending_signals ;
 int pending_signals_clear_bit (int *,long long) ;
 scalar_t__ progname ;
 int queue_add (struct forth_request*) ;
 int queue_size ;
 scalar_t__ quit_steps ;
 int reopen_logs () ;
 scalar_t__ result_living_time ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int setsid () ;
 int sfd ;
 int shared_memory_init () ;
 int sigabrt ;
 int sigabrt_child_handler ;
 scalar_t__ sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,long long) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;
 int sigkill ;
 int signal (int const,int ) ;
 int sigother ;
 int sigsegv ;
 int sigsegv_child_handler ;
 int sigterm ;
 int sigterm_child_handler ;
 int sigxcpu ;
 int stat_failure_incr (int *,struct forth_request*) ;
 int stats_buffer ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int threads_limit ;
 char* username ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,...) ;
 int vmsize_limit ;
 scalar_t__ waitpid (int,int*,int ) ;

void start_server (void) {
  int i;
  int prev_time;

  init_epoll ();
  init_netbuffers ();

  prev_time = 0;

  image_reserved_words_hashtable_init ();
  vkprintf (4, "progname: %s\n", progname);
  map_limit = 0;
  if (map_limit > max_virtual_memory) {
    map_limit = max_virtual_memory;
  }
  image_init (progname, max_load_image_area, memory_limit, map_limit, 0, threads_limit);

  if (daemonize) {
    setsid ();
    reopen_logs ();
  }

  if (change_user_group (username, groupname) < 0) {
    kprintf ("fatal: cannot change user to %s, group to %s\n", username ? username : "(none)", groupname ? groupname : "(none)");
    exit (1);
  }

  if (!shared_memory_init ()) {
    exit (1);
  }

  init_listening_connection (sfd, &ct_image_engine_server, &memcache_methods);

  signal (128, SIG_DFL);
  signal (SIGPIPE, SIG_IGN);
  signal (SIGIO, SIG_IGN);

  sigset_t signal_set;
  sigemptyset (&signal_set);
  sigaddset (&signal_set, SIGINT);
  sigaddset (&signal_set, 129);
  sigaddset (&signal_set, SIGUSR1);
  sigaddset (&signal_set, SIGCHLD);
  if (daemonize) {
    sigaddset (&signal_set, SIGHUP);
  }
  struct sigaction act;
  act.sa_handler = main_sig_handler;
  act.sa_mask = signal_set;
  act.sa_flags = SA_NOCLDSTOP;
  for (i = 1; i <= SIGRTMAX; i++) {
    if (sigismember (&signal_set, i)) {
      if (sigaction (i, &act, ((void*)0)) < 0) {
        kprintf ("sigaction (%d) failed. %m\n", i);
        exit (1);
      }
    }
  }

  if (verbosity > 0) {
    char *cwd = getcwd (stats_buffer, STATS_BUFF_SIZE - 10);
    if (cwd != ((void*)0)) {
      kprintf ("Current working directory: %s\n", cwd);
    }
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 1023)) {
      kprintf ("epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
          active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    epoll_work (11);
    if (now != prev_time) {
      prev_time = now;
      cron();
    }

    if (interrupted_by_signal ()) {
      break;
    }

    if (pending_signals & (1LL << SIGCHLD)) {
      pending_signals_clear_bit (&signal_set, SIGCHLD);
      vkprintf (1, "got SIGCHLD.\n");

    }

    if (pending_signals & (1LL << SIGHUP)) {
      pending_signals_clear_bit (&signal_set, SIGHUP);
      vkprintf (1, "got SIGHUP.\n");

    }

    if (pending_signals & (1LL << SIGUSR1)) {
      pending_signals_clear_bit (&signal_set, SIGUSR1);
      vkprintf (1, "got SIGUSR1, rotate logs.\n");
      reopen_logs ();

    }

    while (child_process > 0) {
      int status;
      pid_t pid = waitpid (-1, &status, WNOHANG);
      if (pid <= 0) {
        break;
      }
      int j;
      for (j = 0; j < child_process; j++) {
        if (P[j] == pid) {
          char *error = ((void*)0);
          complete_tasks++;
          struct forth_request *E = RP[j];
          E->res = EXIT_FAILURE;
          if (WIFEXITED(status)) {
            E->res = WEXITSTATUS(status);
            if (E->res != EXIT_SUCCESS) {
              E->res = EXIT_FAILURE;
              stat_failure_incr (&not_zero_exit_code, E);
            }
          } else if (WIFSIGNALED(status)) {
            int t = WTERMSIG(status);
            vkprintf (3, "WTERMSIG(status): %d, pid: %d\n", t, (int) pid);
            switch (t) {
              case 132:
                stat_failure_incr (&sigabrt, E);
                error = "SIGABRT";
              break;
              case 130:
                stat_failure_incr (&sigsegv, E);
                error = "SIGSEGV";
              break;
              case 131:
                stat_failure_incr (&sigkill, E);
                error = "SIGKILL";
              break;
              case 128:
                stat_failure_incr (&sigxcpu, E);
                error = "SIGXCPU";
              break;
              case 129:
                stat_failure_incr (&sigterm, E);
                error = "SIGTERM";
              break;
              default:
                stat_failure_incr (&sigother, E);
                error = "SIGOTHER";
              break;
            }
          }
          if (E->prog != ((void*)0)) {
            free (E->prog);
            E->size = 0;
          }
          --child_process;
          P[j] = P[child_process];
          RP[j] = RP[child_process];

          int tmp = SHM[j]; SHM[j] = SHM[child_process]; SHM[child_process] = tmp;
          if (error == ((void*)0)) {
            copy_shared_memory_output (E->prog_id, SHM[child_process], E);
          } else {
            E->size = strlen (error);
            E->prog = strdup (error);
            assert (E->prog);
            E->timeout = now + result_living_time;
            all_results_memory += E->size + 1;
            forth_request_run_output_gc ();
          }
          queue_add (E);
          break;
        }
      }
    }

    for (i = 0; i < child_process; i++) {
      if (RP[i]->priority || child_check_limits (P[i]) > 0) {
        if (RP[i]->priority) {
          kill (P[i], 131);
        } else {
          kill (P[i], 129);
          RP[i]->priority |= 1;
        }
      }
    }

    while (child_process < max_process_number && queue_size > 0) {
      pid_t pid = fork ();
      struct forth_request *E = HEAP[1];
      assert (E->prog);
      queue_size--;
      if (!pid) {

        signal (129, sigterm_child_handler);
        signal (130, sigsegv_child_handler);
        signal (132, sigabrt_child_handler);
        close (sfd); sfd = -1;
        struct rlimit mlimit, cpu_limit;
        cpu_limit.rlim_cur = cpu_limit.rlim_max = 20 * threads_limit;
        if (setrlimit (RLIMIT_CPU, &cpu_limit) < 0) {
          vkprintf (1, "setrlimit (CPU_LIMIT (%lld,%lld)) fail. %m", (long long) cpu_limit.rlim_cur, (long long) cpu_limit.rlim_max);
        }
        mlimit.rlim_cur = mlimit.rlim_max = vmsize_limit;
        if (setrlimit (RLIMIT_AS, &mlimit) < 0) {
          vkprintf (1, "setrlimit (RLIMIT_AS (%lld,%lld)) fail. %m", (long long) mlimit.rlim_cur, (long long) mlimit.rlim_max);
        }
        if (job_nice > main_nice && nice (job_nice - main_nice) < 0) {
          vkprintf (1, "nice (%d) fail. %m\n", job_nice - main_nice);
        }
        char *cmd = E->prog;
        int r = image_exec (E->prog_id, cmd, strlen (cmd), (int) getpid (), SHM[child_process]);
        image_done ();
        exit (r);
      } else {

        E->priority = 0;
        P[child_process] = pid;
        RP[child_process] = E;
        child_process++;
        E->res = REQ_RUNNING;
        heapify_front (HEAP[queue_size + 1], 1);
      }
    }
    if (quit_steps && !--quit_steps) break;
  }

  epoll_close (sfd);
  close (sfd);

  image_done ();
  kprintf ("Main process terminated (pending_signals: 0x%llx).\n", pending_signals);
}
