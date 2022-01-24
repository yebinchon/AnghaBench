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

/* Variables and functions */
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* fd ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__* fsize ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC4 (int x, char *fname, int creat) {
  fnames[x] = fname;
  fd[x] = FUNC3 (fname, creat > 0 ? O_RDWR | O_CREAT | O_TRUNC : O_RDONLY, 0600);
  if (creat < 0 && fd[x] < 0) {
    if (fd[x] < 0) {
      FUNC1 (stderr, "%s: cannot open %s: %m\n", progname, fname);
    }
    return -1;
  }
  if (fd[x] < 0) {
    FUNC1 (stderr, "%s: cannot open %s: %m\n", progname, fname);
    FUNC0(1);
  }
  fsize[x] = FUNC2 (fd[x], 0, SEEK_END);
  if (fsize[x] < 0) {
    FUNC1 (stderr, "%s: cannot seek %s: %m\n", progname, fname);
    FUNC0(2);
  }
  FUNC2 (fd[x], 0, SEEK_SET);
  if (verbosity) {
    FUNC1 (stderr, "opened file %s, fd=%d, size=%ld\n", fname, fd[x], fsize[x]);
  }
  return fd[x];
}