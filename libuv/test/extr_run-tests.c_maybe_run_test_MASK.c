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
typedef  scalar_t__ uv_uid_t ;
typedef  scalar_t__ uv_gid_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  fd ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ errno ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (int) ; 
 int FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC22 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int FUNC24 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (int,char const*,int) ; 

__attribute__((used)) static int FUNC29(int argc, char **argv) {
  if (FUNC26(argv[1], "--list") == 0) {
    FUNC19(stdout);
    return 0;
  }

  if (FUNC26(argv[1], "ipc_helper_listen_before_write") == 0) {
    return FUNC11(0);
  }

  if (FUNC26(argv[1], "ipc_helper_listen_after_write") == 0) {
    return FUNC11(1);
  }

  if (FUNC26(argv[1], "ipc_helper_heavy_traffic_deadlock_bug") == 0) {
    return FUNC14();
  }

  if (FUNC26(argv[1], "ipc_send_recv_helper") == 0) {
    return FUNC17();
  }

  if (FUNC26(argv[1], "ipc_helper_tcp_connection") == 0) {
    return FUNC16();
  }

  if (FUNC26(argv[1], "ipc_helper_closed_handle") == 0) {
    return FUNC13();
  }

  if (FUNC26(argv[1], "ipc_helper_bind_twice") == 0) {
    return FUNC12();
  }

  if (FUNC26(argv[1], "ipc_helper_send_zero") == 0) {
    return FUNC15();
  }

  if (FUNC26(argv[1], "stdio_over_pipes_helper") == 0) {
    return FUNC25();
  }

  if (FUNC26(argv[1], "spawn_helper1") == 0) {
    FUNC18();
    return 1;
  }

  if (FUNC26(argv[1], "spawn_helper2") == 0) {
    FUNC18();
    FUNC20("hello world\n");
    return 1;
  }

  if (FUNC26(argv[1], "spawn_tcp_server_helper") == 0) {
    FUNC18();
    return FUNC24();
  }

  if (FUNC26(argv[1], "spawn_helper3") == 0) {
    char buffer[256];
    FUNC18();
    FUNC0(buffer == FUNC4(buffer, sizeof(buffer) - 1, stdin));
    buffer[sizeof(buffer) - 1] = '\0';
    FUNC6(buffer, stdout);
    return 1;
  }

  if (FUNC26(argv[1], "spawn_helper4") == 0) {
    FUNC18();
    /* Never surrender, never return! */
    while (1) FUNC27(10000);
  }

  if (FUNC26(argv[1], "spawn_helper5") == 0) {
    const char out[] = "fourth stdio!\n";
    FUNC18();
    {
#ifdef _WIN32
      DWORD bytes;
      WriteFile((HANDLE) _get_osfhandle(3), out, sizeof(out) - 1, &bytes, NULL);
#else
      ssize_t r;

      do
        r = FUNC28(3, out, sizeof(out) - 1);
      while (r == -1 && errno == EINTR);

      FUNC7(3);
#endif
    }
    return 1;
  }

  if (FUNC26(argv[1], "spawn_helper6") == 0) {
    int r;

    FUNC18();

    r = FUNC5(stdout, "hello world\n");
    FUNC0(r > 0);

    r = FUNC5(stderr, "hello errworld\n");
    FUNC0(r > 0);

    return 1;
  }

  if (FUNC26(argv[1], "spawn_helper7") == 0) {
    int r;
    char *test;

    FUNC18();

    /* Test if the test value from the parent is still set */
    test = FUNC8("ENV_TEST");
    FUNC0(test != NULL);

    r = FUNC5(stdout, "%s", test);
    FUNC0(r > 0);

    return 1;
  }

#ifndef _WIN32
  if (FUNC26(argv[1], "spawn_helper8") == 0) {
    int fd;

    FUNC18();
    FUNC0(sizeof(fd) == FUNC21(0, &fd, sizeof(fd)));
    FUNC0(fd > 2);
    FUNC0(-1 == FUNC28(fd, "x", 1));

    return 1;
  }
#endif  /* !_WIN32 */

  if (FUNC26(argv[1], "spawn_helper9") == 0) {
    FUNC18();
    FUNC23();
    return 1;
  }

#ifndef _WIN32
  if (FUNC26(argv[1], "spawn_helper_setuid_setgid") == 0) {
    uv_uid_t uid = FUNC3(argv[2]);
    uv_gid_t gid = FUNC3(argv[3]);

    FUNC0(uid == FUNC10());
    FUNC0(gid == FUNC9());
    FUNC18();

    return 1;
  }
#endif  /* !_WIN32 */

  return FUNC22(argv[1], 0, 1);
}