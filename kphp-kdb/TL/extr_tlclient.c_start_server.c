
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SIGINT ;
 int SIGTERM ;
 int active_connections ;
 int add_history (char*) ;
 scalar_t__ change_user (char*) ;
 int cleanup () ;
 int connected ;
 int create_all_outbound_connections () ;
 int cron () ;
 int epoll_work (int) ;
 int exec_command (char*) ;
 int exit (int) ;
 scalar_t__ expect_input ;
 int fprintf (scalar_t__,char*,char*) ;
 int free (char*) ;
 int init_epoll () ;
 int init_netbuffers () ;
 int kprintf (char*,...) ;
 scalar_t__ log_file ;
 int maxconn ;
 int now ;
 int pending_signals ;
 scalar_t__ quit_steps ;
 char* readline (char*) ;
 int send_rpc_command (char*) ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int start_time ;
 int strlen (char*) ;
 char* username ;
 int vkprintf (int,char*,...) ;

void start_server (void) {
  int i;
  int prev_time;

  init_epoll ();
  init_netbuffers ();

  prev_time = 0;

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  create_all_outbound_connections ();

  signal (SIGINT, sigint_handler);
  signal (SIGTERM, sigterm_handler);

  for (i = 0; !pending_signals; i++) {
    if (!(i & 255)) {
      vkprintf (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    epoll_work (97);

    if (now != prev_time) {
      prev_time = now;
      cron ();
      if (!connected && now - start_time > 10) {
        kprintf ("Didn't connect to server after 10 seconds.\n");
        exit (1);
      }
    }

    if (expect_input) {
      vkprintf (4, "Before readline call.\n");
      char *input = readline ("TL>");
      if (input[0]) {
        int l;
        if (log_file) {
          fprintf (log_file, "TL>%s\n", input);
        }
        add_history (input);
        for (l = strlen (input) - 1; l > 0 && input[l] == ' '; l--) {
          input[l] = 0;
        }

        if (input[0] == '(') {
          send_rpc_command (input);
        } else {
          exec_command (input);
        }
      }
      if (input != ((void*)0)) {
        free (input);
      }
    }
    if (quit_steps && !--quit_steps) break;
  }

  cleanup ();

}
