
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_uid_t ;
typedef scalar_t__ uv_gid_t ;
typedef int ssize_t ;
typedef int out ;
typedef int fd ;
typedef int buffer ;
typedef int HANDLE ;
typedef int DWORD ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 int WriteFile (int ,char const*,int,int *,int *) ;
 scalar_t__ _get_osfhandle (int) ;
 scalar_t__ atoi (char*) ;
 scalar_t__ errno ;
 char* fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int fsync (int) ;
 char* getenv (char*) ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int ipc_helper (int) ;
 int ipc_helper_bind_twice () ;
 int ipc_helper_closed_handle () ;
 int ipc_helper_heavy_traffic_deadlock_bug () ;
 int ipc_helper_send_zero () ;
 int ipc_helper_tcp_connection () ;
 int ipc_send_recv_helper () ;
 int notify_parent_process () ;
 int print_tests (int ) ;
 int printf (char*) ;
 int read (int ,int*,int) ;
 int run_test (char*,int ,int) ;
 int spawn_stdin_stdout () ;
 int spawn_tcp_server_helper () ;
 int stderr ;
 int stdin ;
 int stdio_over_pipes_helper () ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int uv_sleep (int) ;
 int write (int,char const*,int) ;

__attribute__((used)) static int maybe_run_test(int argc, char **argv) {
  if (strcmp(argv[1], "--list") == 0) {
    print_tests(stdout);
    return 0;
  }

  if (strcmp(argv[1], "ipc_helper_listen_before_write") == 0) {
    return ipc_helper(0);
  }

  if (strcmp(argv[1], "ipc_helper_listen_after_write") == 0) {
    return ipc_helper(1);
  }

  if (strcmp(argv[1], "ipc_helper_heavy_traffic_deadlock_bug") == 0) {
    return ipc_helper_heavy_traffic_deadlock_bug();
  }

  if (strcmp(argv[1], "ipc_send_recv_helper") == 0) {
    return ipc_send_recv_helper();
  }

  if (strcmp(argv[1], "ipc_helper_tcp_connection") == 0) {
    return ipc_helper_tcp_connection();
  }

  if (strcmp(argv[1], "ipc_helper_closed_handle") == 0) {
    return ipc_helper_closed_handle();
  }

  if (strcmp(argv[1], "ipc_helper_bind_twice") == 0) {
    return ipc_helper_bind_twice();
  }

  if (strcmp(argv[1], "ipc_helper_send_zero") == 0) {
    return ipc_helper_send_zero();
  }

  if (strcmp(argv[1], "stdio_over_pipes_helper") == 0) {
    return stdio_over_pipes_helper();
  }

  if (strcmp(argv[1], "spawn_helper1") == 0) {
    notify_parent_process();
    return 1;
  }

  if (strcmp(argv[1], "spawn_helper2") == 0) {
    notify_parent_process();
    printf("hello world\n");
    return 1;
  }

  if (strcmp(argv[1], "spawn_tcp_server_helper") == 0) {
    notify_parent_process();
    return spawn_tcp_server_helper();
  }

  if (strcmp(argv[1], "spawn_helper3") == 0) {
    char buffer[256];
    notify_parent_process();
    ASSERT(buffer == fgets(buffer, sizeof(buffer) - 1, stdin));
    buffer[sizeof(buffer) - 1] = '\0';
    fputs(buffer, stdout);
    return 1;
  }

  if (strcmp(argv[1], "spawn_helper4") == 0) {
    notify_parent_process();

    while (1) uv_sleep(10000);
  }

  if (strcmp(argv[1], "spawn_helper5") == 0) {
    const char out[] = "fourth stdio!\n";
    notify_parent_process();
    {




      ssize_t r;

      do
        r = write(3, out, sizeof(out) - 1);
      while (r == -1 && errno == EINTR);

      fsync(3);

    }
    return 1;
  }

  if (strcmp(argv[1], "spawn_helper6") == 0) {
    int r;

    notify_parent_process();

    r = fprintf(stdout, "hello world\n");
    ASSERT(r > 0);

    r = fprintf(stderr, "hello errworld\n");
    ASSERT(r > 0);

    return 1;
  }

  if (strcmp(argv[1], "spawn_helper7") == 0) {
    int r;
    char *test;

    notify_parent_process();


    test = getenv("ENV_TEST");
    ASSERT(test != ((void*)0));

    r = fprintf(stdout, "%s", test);
    ASSERT(r > 0);

    return 1;
  }


  if (strcmp(argv[1], "spawn_helper8") == 0) {
    int fd;

    notify_parent_process();
    ASSERT(sizeof(fd) == read(0, &fd, sizeof(fd)));
    ASSERT(fd > 2);
    ASSERT(-1 == write(fd, "x", 1));

    return 1;
  }


  if (strcmp(argv[1], "spawn_helper9") == 0) {
    notify_parent_process();
    spawn_stdin_stdout();
    return 1;
  }


  if (strcmp(argv[1], "spawn_helper_setuid_setgid") == 0) {
    uv_uid_t uid = atoi(argv[2]);
    uv_gid_t gid = atoi(argv[3]);

    ASSERT(uid == getuid());
    ASSERT(gid == getgid());
    notify_parent_process();

    return 1;
  }


  return run_test(argv[1], 0, 1);
}
