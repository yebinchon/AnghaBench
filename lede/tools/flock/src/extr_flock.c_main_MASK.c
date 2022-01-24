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
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; TYPE_1__ it_value; } ;
struct itimerval {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; TYPE_1__ it_value; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
#define  EBADF 130 
#define  EINTR 129 
 int const EISDIR ; 
 int EMFILE ; 
 int ENFILE ; 
 int ENOLCK ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOF ; 
 int EROFS ; 
#define  EWOULDBLOCK 128 
 int EXIT_FAILURE ; 
 int EX_CANTCREAT ; 
 int EX_DATAERR ; 
 int EX_NOINPUT ; 
 int EX_OSERR ; 
 int EX_UNAVAILABLE ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int LOCK_SH ; 
 int LOCK_UN ; 
 int O_CREAT ; 
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 char* PACKAGE_STRING ; 
 int R_OK ; 
 int /*<<< orphan*/  SA_RESETHAND ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int W_OK ; 
 char* FUNC4 (char*) ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int const errno ; 
 int /*<<< orphan*/  FUNC8 (char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC13 (char*) ; 
 int FUNC14 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  FUNC15 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (char const*,int,...) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 scalar_t__ optopt ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 char* program ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 char* FUNC22 (int) ; 
 scalar_t__ FUNC23 (char*,char**,int) ; 
 char* FUNC24 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  timeout_expired ; 
 int /*<<< orphan*/  timeout_handler ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC27(int argc, char *argv[])
{
  struct itimerval timeout, old_timer;
  int have_timeout = 0;
  int type = LOCK_EX;
  int block = 0;
  int fd = -1;
  int opt, ix;
  int do_close = 0;
  int err;
  int status;
  int open_flags = 0;
  char *eon;
  char **cmd_argv = NULL, *sh_c_argv[4];
  const char *filename = NULL;
  struct sigaction sa, old_sa;

  program = argv[0];

  if ( argc < 2 )
    FUNC25(EX_USAGE);

  FUNC15(&timeout, 0, sizeof timeout);

  optopt = 0;
  while ( (opt = FUNC14(argc, argv, "+sexnouw:hV?", long_options, &ix)) != EOF ) {
    switch(opt) {
    case 's':
      type = LOCK_SH;
      break;
    case 'e':
    case 'x':
      type = LOCK_EX;
      break;
    case 'u':
      type = LOCK_UN;
      break;
    case 'o':
      do_close = 1;
      break;
    case 'n':
      block = LOCK_NB;
      break;
    case 'w':
      have_timeout = 1;
      eon = FUNC24(optarg, &timeout.it_value);
      if ( *eon )
	FUNC25(EX_USAGE);
      break;
    case 'V':
      FUNC17("flock (%s)\n", PACKAGE_STRING);
      FUNC9(0);
    default:
      /* optopt will be set if this was an unrecognized option, i.e. *not* 'h' or '?' */
      FUNC25(optopt ? EX_USAGE : 0);
      break;
    }
  }

  if ( argc > optind+1 ) {
    /* Run command */

    if ( !FUNC21(argv[optind+1], "-c") ||
	 !FUNC21(argv[optind+1], "--command") ) {

      if ( argc != optind+3 ) {
	FUNC12(stderr, FUNC4("%s: %s requires exactly one command argument\n"),
		program, argv[optind+1]);
	FUNC9(EX_USAGE);
      }

      cmd_argv = sh_c_argv;

      cmd_argv[0] = FUNC13("SHELL");
      if ( !cmd_argv[0] || !*cmd_argv[0] )
	cmd_argv[0] = _PATH_BSHELL;

      cmd_argv[1] = "-c";
      cmd_argv[2] = argv[optind+2];
      cmd_argv[3] = 0;
    } else {
      cmd_argv = &argv[optind+1];
    }

    filename = argv[optind];
    fd = FUNC16(filename, O_RDONLY|O_NOCTTY|O_CREAT, 0666);
    /* Linux doesn't like O_CREAT on a directory, even though it should be a
       no-op */
    if (fd < 0 && errno == EISDIR)
        fd = FUNC16(filename, O_RDONLY|O_NOCTTY);

    if ( fd < 0 ) {
      err = errno;
      FUNC12(stderr, FUNC4("%s: cannot open lock file %s: %s\n"),
	      program, argv[optind], FUNC22(err));
      FUNC9((err == ENOMEM||err == EMFILE||err == ENFILE) ? EX_OSERR :
	   (err == EROFS||err == ENOSPC) ? EX_CANTCREAT :
	   EX_NOINPUT);
    }

  } else if (optind < argc) {
    /* Use provided file descriptor */

    fd = (int)FUNC23(argv[optind], &eon, 10);
    if ( *eon || !argv[optind] ) {
      FUNC12(stderr, FUNC4("%s: bad number: %s\n"), program, argv[optind]);
      FUNC9(EX_USAGE);
    }

  } else {
    /* Bad options */

    FUNC12(stderr, FUNC4("%s: requires file descriptor, file or directory\n"),
		program);
    FUNC9(EX_USAGE);
  }


  if ( have_timeout ) {
    if ( timeout.it_value.tv_sec == 0 &&
	 timeout.it_value.tv_usec == 0 ) {
      /* -w 0 is equivalent to -n; this has to be special-cased
	 because setting an itimer to zero means disabled! */

      have_timeout = 0;
      block = LOCK_NB;
    } else {
      FUNC15(&sa, 0, sizeof sa);

      sa.sa_handler = timeout_handler;
      sa.sa_flags   = SA_RESETHAND;
      FUNC19(SIGALRM, &sa, &old_sa);

      FUNC18(ITIMER_REAL, &timeout, &old_timer);
    }
  }

  while ( FUNC10(fd, type|block) ) {
    switch( (err = errno) ) {
    case EWOULDBLOCK:		/* -n option set and failed to lock */
      FUNC9(1);
    case EINTR:			/* Signal received */
      if ( timeout_expired )
	FUNC9(1);		/* -w option set and failed to lock */
      continue;			/* otherwise try again */
    case EBADF:			/* since Linux 3.4 (commit 55725513) */
      /* Probably NFSv4 where flock() is emulated by fcntl().
       * Let's try to reopen in read-write mode.
       */
      if (!(open_flags & O_RDWR) &&
          type != LOCK_SH &&
          filename &&
          FUNC6(filename, R_OK | W_OK) == 0) {

              FUNC7(fd);
              open_flags = O_RDWR;
              fd = FUNC16(filename, open_flags);
              break;
      }
      /* go through */
    default:			/* Other errors */
      if ( filename )
	FUNC12(stderr, "%s: %s: %s\n", program, filename, FUNC22(err));
      else
	FUNC12(stderr, "%s: %d: %s\n", program, fd, FUNC22(err));
      FUNC9((err == ENOLCK||err == ENOMEM) ? EX_OSERR : EX_DATAERR);
    }
  }

  if ( have_timeout ) {
    FUNC18(ITIMER_REAL, &old_timer, NULL); /* Cancel itimer */
    FUNC19(SIGALRM, &old_sa, NULL); /* Cancel signal handler */
  }

  status = 0;

  if ( cmd_argv ) {
    pid_t w, f;

    /* Clear any inherited settings */
    FUNC20(SIGCHLD, SIG_DFL);
    f = FUNC11();

    if ( f < 0 ) {
      err = errno;
      FUNC12(stderr, FUNC4("%s: fork failed: %s\n"), program, FUNC22(err));
      FUNC9(EX_OSERR);
    } else if ( f == 0 ) {
      if ( do_close )
	FUNC7(fd);
      err = errno;
      FUNC8(cmd_argv[0], cmd_argv);
      /* execvp() failed */
      FUNC12(stderr, "%s: %s: %s\n", program, cmd_argv[0], FUNC22(err));
      FUNC5((err == ENOMEM) ? EX_OSERR: EX_UNAVAILABLE);
    } else {
      do {
	w = FUNC26(f, &status, 0);
	if (w == -1 && errno != EINTR)
	  break;
      } while ( w != f );

      if (w == -1) {
	err = errno;
	status = EXIT_FAILURE;
	FUNC12(stderr, "%s: waitpid failed: %s\n", program, FUNC22(err));
      } else if ( FUNC1(status) )
	status = FUNC0(status);
      else if ( FUNC2(status) )
	status = FUNC3(status) + 128;
      else
	status = EX_OSERR;	/* WTF? */
    }
  }

  return status;
}