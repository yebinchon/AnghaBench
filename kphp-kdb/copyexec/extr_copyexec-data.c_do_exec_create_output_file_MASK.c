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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* cur_transaction_hash ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 (char*,int,char*,int,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static int FUNC7 (int cmd_id, char *suffix) {
  char filename[128];
  FUNC0 (FUNC4 (filename, sizeof (filename), ".c%d.%s.%s", cmd_id, cur_transaction_hash, suffix) < (int) sizeof (filename));
  int fd = FUNC3 (filename, O_RDWR | O_CREAT | O_TRUNC | O_EXCL, 0000);
  if (fd < 0) {
    FUNC6 (1, "create_output_file: creat (%s, O_RDWR | O_CREAT | O_TRUNC | O_EXCL, 0000) failed. %m\n", filename);
    return -1;
  }

  if (FUNC5 (filename) < 0) {
    FUNC6 (1, "create_output_file: unlink (%s) failed. %m\n", filename);
    FUNC2 (&fd);
    return -2;
  }

  if (FUNC1 (fd, F_SETFD, FD_CLOEXEC) < 0) {
    FUNC6 (1, "create_output_file: fcntl (%d, F_SETFD, FD_CLOEXEC) failed. %m\n", fd);
    FUNC2 (&fd);
    return -3;
  }

  return fd;
}