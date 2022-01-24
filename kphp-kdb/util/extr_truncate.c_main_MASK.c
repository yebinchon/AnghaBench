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
struct stat {long long st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int,long long) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 long long FUNC7 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9 (int argc, const char *argv[]) {
  char *end;
  struct stat st;
  int fd;
     
  if (argc != 3) {
    FUNC8();
    return 2;
  }
  long long pos = FUNC7 (argv[2], &end, 0);
  if (!end || *end || !*argv[2]) {
    FUNC8();
    return 2;
  }
  fd = FUNC6 (argv[1], O_WRONLY);
  if (fd < 0) {
    FUNC2 (stderr, "cannot open file %s: %m\n", argv[1]);
    return 1;
  }
  if (FUNC3 (fd, &st) < 0) {
    FUNC2 (stderr, "cannot stat file %s: %m\n", argv[1]);
    return 1;
  }
  if (!FUNC0(st.st_mode)) {
    FUNC2 (stderr, "%s is not a regular file\n", argv[1]);
    return 1;
  }
  if (pos >= st.st_size) {
    FUNC2 (stderr, "truncate position %lld after end of file\n", pos);
    return 2;
  }
  if (pos < -st.st_size) {
    FUNC2 (stderr, "truncate position %lld before start of file\n", pos);
    return 2;
  }
  if (pos < 0) {
    pos += st.st_size;
  }
  if (FUNC5 (fd, F_WRLCK) <= 0) {
    return 1;
  }
  if (FUNC4 (fd, pos) < 0) {
    FUNC2 (stderr, "cannot truncate file %s at position %lld: %m\n", argv[1], pos);
  }
  FUNC1 (fd);
  return 0;
}