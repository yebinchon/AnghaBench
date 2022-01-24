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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct mrb_io {int fd; int fd2; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct mrb_io* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 struct timeval FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC19(mrb_state *mrb, mrb_value klass)
{
  mrb_value *argv;
  mrb_int argc;
  mrb_value read, read_io, write, except, timeout, list;
  struct timeval *tp, timerec;
  fd_set pset, rset, wset, eset;
  fd_set *rp, *wp, *ep;
  struct mrb_io *fptr;
  int pending = 0;
  mrb_value result;
  int max = 0;
  int interrupt_flag = 0;
  int i, n;

  FUNC11(mrb, "*", &argv, &argc);

  if (argc < 1 || argc > 4) {
    FUNC15(mrb, E_ARGUMENT_ERROR, "wrong number of arguments (%S for 1..4)", FUNC10(argc));
  }

  timeout = FUNC14();
  except = FUNC14();
  write = FUNC14();
  if (argc > 3)
    timeout = argv[3];
  if (argc > 2)
    except = argv[2];
  if (argc > 1)
    write = argv[1];
  read = argv[0];

  if (FUNC13(timeout)) {
    tp = NULL;
  } else {
    timerec = FUNC18(mrb, timeout);
    tp = &timerec;
  }

  FUNC2(&pset);
  if (!FUNC13(read)) {
    FUNC9(mrb, read, MRB_TT_ARRAY);
    rp = &rset;
    FUNC2(rp);
    for (i = 0; i < FUNC3(read); i++) {
      read_io = FUNC4(read)[i];
      fptr = FUNC5(mrb, read_io);
      FUNC1(fptr->fd, rp);
      if (FUNC12(mrb, read_io)) {
        pending++;
        FUNC1(fptr->fd, &pset);
      }
      if (max < fptr->fd)
        max = fptr->fd;
    }
    if (pending) {
      timerec.tv_sec = timerec.tv_usec = 0;
      tp = &timerec;
    }
  } else {
    rp = NULL;
  }

  if (!FUNC13(write)) {
    FUNC9(mrb, write, MRB_TT_ARRAY);
    wp = &wset;
    FUNC2(wp);
    for (i = 0; i < FUNC3(write); i++) {
      fptr = FUNC5(mrb, FUNC4(write)[i]);
      FUNC1(fptr->fd, wp);
      if (max < fptr->fd)
        max = fptr->fd;
      if (fptr->fd2 >= 0) {
        FUNC1(fptr->fd2, wp);
        if (max < fptr->fd2)
          max = fptr->fd2;
      }
    }
  } else {
    wp = NULL;
  }

  if (!FUNC13(except)) {
    FUNC9(mrb, except, MRB_TT_ARRAY);
    ep = &eset;
    FUNC2(ep);
    for (i = 0; i < FUNC3(except); i++) {
      fptr = FUNC5(mrb, FUNC4(except)[i]);
      FUNC1(fptr->fd, ep);
      if (max < fptr->fd)
        max = fptr->fd;
      if (fptr->fd2 >= 0) {
        FUNC1(fptr->fd2, ep);
        if (max < fptr->fd2)
          max = fptr->fd2;
      }
    }
  } else {
    ep = NULL;
  }

  max++;

retry:
  n = FUNC17(max, rp, wp, ep, tp);
  if (n < 0) {
    if (errno != EINTR)
      FUNC16(mrb, "select failed");
    if (tp == NULL)
      goto retry;
    interrupt_flag = 1;
  }

  if (!pending && n == 0)
    return FUNC14();

  result = FUNC7(mrb, 3);
  FUNC8(mrb, result, rp? FUNC6(mrb) : FUNC7(mrb, 0));
  FUNC8(mrb, result, wp? FUNC6(mrb) : FUNC7(mrb, 0));
  FUNC8(mrb, result, ep? FUNC6(mrb) : FUNC7(mrb, 0));

  if (interrupt_flag == 0) {
    if (rp) {
      list = FUNC4(result)[0];
      for (i = 0; i < FUNC3(read); i++) {
        fptr = FUNC5(mrb, FUNC4(read)[i]);
        if (FUNC0(fptr->fd, rp) ||
            FUNC0(fptr->fd, &pset)) {
          FUNC8(mrb, list, FUNC4(read)[i]);
        }
      }
    }

    if (wp) {
      list = FUNC4(result)[1];
      for (i = 0; i < FUNC3(write); i++) {
        fptr = FUNC5(mrb, FUNC4(write)[i]);
        if (FUNC0(fptr->fd, wp)) {
          FUNC8(mrb, list, FUNC4(write)[i]);
        } else if (fptr->fd2 >= 0 && FUNC0(fptr->fd2, wp)) {
          FUNC8(mrb, list, FUNC4(write)[i]);
        }
      }
    }

    if (ep) {
      list = FUNC4(result)[2];
      for (i = 0; i < FUNC3(except); i++) {
        fptr = FUNC5(mrb, FUNC4(except)[i]);
        if (FUNC0(fptr->fd, ep)) {
          FUNC8(mrb, list, FUNC4(except)[i]);
        } else if (fptr->fd2 >= 0 && FUNC0(fptr->fd2, ep)) {
          FUNC8(mrb, list, FUNC4(except)[i]);
        }
      }
    }
  }

  return result;
}