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
typedef  int /*<<< orphan*/  sun0 ;
struct sockaddr_un {char* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*,char*) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static mrb_value
FUNC19(mrb_state *mrb, mrb_value self)
{
  char rfname[]      = "tmp.mruby-io-test-r.XXXXXXXX";
  char wfname[]      = "tmp.mruby-io-test-w.XXXXXXXX";
  char symlinkname[] = "tmp.mruby-io-test-l.XXXXXXXX";
  char socketname[]  = "tmp.mruby-io-test-s.XXXXXXXX";
  char msg[] = "mruby io test\n";
  mode_t mask;
  int fd0, fd1;
  FILE *fp;

#if !defined(_WIN32) && !defined(_WIN64)
  int fd2, fd3;
  struct sockaddr_un sun0;
#endif

  mask = FUNC17(077);
  fd0 = FUNC5(rfname);
  fd1 = FUNC5(wfname);
  if (fd0 == -1 || fd1 == -1) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't create temporary file");
    return FUNC9();
  }
  FUNC1(fd0);
  FUNC1(fd1);

#if !defined(_WIN32) && !defined(_WIN64)
  fd2 = FUNC5(symlinkname);
  fd3 = FUNC5(socketname);
  if (fd2 == -1 || fd3 == -1) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't create temporary file");
    return FUNC9();
  }
#endif
  FUNC17(mask);

  FUNC7(mrb, FUNC8(mrb, "$mrbtest_io_rfname"), FUNC12(mrb, rfname));
  FUNC7(mrb, FUNC8(mrb, "$mrbtest_io_wfname"), FUNC12(mrb, wfname));
  FUNC7(mrb, FUNC8(mrb, "$mrbtest_io_symlinkname"), FUNC12(mrb, symlinkname));
  FUNC7(mrb, FUNC8(mrb, "$mrbtest_io_socketname"), FUNC12(mrb, socketname));
  FUNC7(mrb, FUNC8(mrb, "$mrbtest_io_msg"), FUNC12(mrb, msg));

  fp = FUNC3(rfname, "wb");
  if (fp == NULL) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't open temporary file");
    return FUNC9();
  }
  FUNC4(msg, fp);
  FUNC2(fp);

  fp = FUNC3(wfname, "wb");
  if (fp == NULL) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't open temporary file");
    return FUNC9();
  }
  FUNC2(fp);

#if !defined(_WIN32) && !defined(_WIN64)
  FUNC18(symlinkname);
  FUNC1(fd2);
  if (FUNC16(rfname, symlinkname) == -1) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't make a symbolic link");
  }

  FUNC18(socketname);
  FUNC1(fd3);
  fd3 = FUNC15(AF_UNIX, SOCK_STREAM, 0);
  if (fd3 == -1) {
    FUNC10(mrb, E_RUNTIME_ERROR, "can't make a socket");
  }
  sun0.sun_family = AF_UNIX;
  FUNC14(sun0.sun_path, sizeof(sun0.sun_path), "%s", socketname);
  if (FUNC0(fd3, (struct sockaddr *)&sun0, sizeof(sun0)) == -1) {
    FUNC11(mrb, E_RUNTIME_ERROR, "can't bind AF_UNIX socket to %S: %S",
               FUNC12(mrb, sun0.sun_path),
               FUNC6(errno));
  }
  FUNC1(fd3);
#endif

  return FUNC13();
}