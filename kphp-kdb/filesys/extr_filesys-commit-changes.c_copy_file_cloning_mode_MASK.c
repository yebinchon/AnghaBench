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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,struct stat*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* tmp_dir ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int FUNC10 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC11 (struct stat *S, char *name, unsigned char *buf, int l, int same) {
  char a[PATH_MAX];
  if (FUNC6 (a, PATH_MAX, "%s/%s", tmp_dir, name) >= PATH_MAX) {
    return -1;
  }
  if (!same) {
    if (FUNC1 (S->st_mode)) {
      FUNC8 (a);
      if (FUNC7 ((char *) buf, a) < 0) {
        FUNC9 (1, "%m\n");
        return -7;
      }
    } else if (FUNC0 (S->st_mode)) {
      if (FUNC4 (a, S->st_mode) < 0) {
        FUNC9 (1, "mkdir (%s, %d) failed. %m\n", a, S->st_mode);
        return -6;
      }
    } else {
      const int flags = O_CREAT | O_TRUNC | O_WRONLY;
      int fd = FUNC5 (a, flags, S->st_mode);
      if (fd < 0) {
        FUNC9 (1, "open (%s, %d, %d) fail. %m\n", a, flags, S->st_mode);
        return -2;
      }
      int sz = FUNC10 (fd, buf, l);
      if (sz != l) {
        FUNC9 (1, "%d bytes of %d was written to %s. %m\n", sz, l, a);
        return -3;
      }
      if (FUNC2 (fd)) {
        FUNC9 (1, "closing %s failed. %m\n", a);
        return -4;
      }
    }
  }
  int r = FUNC3 (a, S);
  if (r < 0) {
    FUNC9 (1, "lcopy_attrs returns error code %d.\n", r);
    return -5;
  }

  return 0;
}