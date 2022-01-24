#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_7__ {int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ process_info_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_8__ {int n; int* pipe; TYPE_1__* vec; } ;
typedef  TYPE_2__ dowait_args ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_2__*),TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int FUNC16(process_info_t* vec, int n, int timeout) {
  int i;
  int r;
  int retval;
  process_info_t* p;
  dowait_args args;
  pthread_t tid;
  pthread_attr_t attr;
  unsigned int elapsed_ms;
  struct timeval timebase;
  struct timeval tv;
  fd_set fds;

  args.vec = vec;
  args.n = n;
  args.pipe[0] = -1;
  args.pipe[1] = -1;

  /* The simple case is where there is no timeout */
  if (timeout == -1) {
    FUNC5(&args);
    return 0;
  }

  /* Hard case. Do the wait with a timeout.
   *
   * Assumption: we are the only ones making this call right now. Otherwise
   * we'd need to lock vec.
   */

  r = FUNC9((int*)&(args.pipe));
  if (r) {
    FUNC8("pipe()");
    return -1;
  }

  if (FUNC11(&attr))
    FUNC2();

#if defined(__MVS__)
  if (pthread_attr_setstacksize(&attr, 1024 * 1024))
#else
  if (FUNC12(&attr, 256 * 1024))
#endif
    FUNC2();

  r = FUNC13(&tid, &attr, dowait, &args);

  if (FUNC10(&attr))
    FUNC2();

  if (r) {
    FUNC8("pthread_create()");
    retval = -1;
    goto terminate;
  }

  if (FUNC6(&timebase, NULL))
    FUNC2();

  tv = timebase;
  for (;;) {
    /* Check that gettimeofday() doesn't jump back in time. */
    FUNC3(tv.tv_sec > timebase.tv_sec ||
           (tv.tv_sec == timebase.tv_sec && tv.tv_usec >= timebase.tv_usec));

    elapsed_ms =
        (tv.tv_sec - timebase.tv_sec) * 1000 +
        (tv.tv_usec / 1000) -
        (timebase.tv_usec / 1000);

    r = 0;  /* Timeout. */
    if (elapsed_ms >= (unsigned) timeout)
      break;

    tv.tv_sec = (timeout - elapsed_ms) / 1000;
    tv.tv_usec = (timeout - elapsed_ms) % 1000 * 1000;

    FUNC1(&fds);
    FUNC0(args.pipe[0], &fds);

    r = FUNC15(args.pipe[0] + 1, &fds, NULL, NULL, &tv);
    if (!(r == -1 && errno == EINTR))
      break;

    if (FUNC6(&tv, NULL))
      FUNC2();
  }

  if (r == -1) {
    FUNC8("select()");
    retval = -1;

  } else if (r) {
    /* The thread completed successfully. */
    retval = 0;

  } else {
    /* Timeout. Kill all the children. */
    for (i = 0; i < n; i++) {
      p = (process_info_t*)(vec + i * sizeof(process_info_t));
      FUNC7(p->pid, SIGTERM);
    }
    retval = -2;
  }

  if (FUNC14(tid, NULL))
    FUNC2();

terminate:
  FUNC4(args.pipe[0]);
  FUNC4(args.pipe[1]);
  return retval;
}