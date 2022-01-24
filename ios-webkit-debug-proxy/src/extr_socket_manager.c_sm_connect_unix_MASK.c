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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC10(const char *filename) {
  struct sockaddr_un name;
  int sfd = -1;
  struct stat fst;

  if (FUNC7(filename, &fst) != 0 || !FUNC0(fst.st_mode)) {
    FUNC4(stderr, "File '%s' is not a socket: %s\n", filename,
        FUNC8(errno));
    return -1;
  }

  if ((sfd = FUNC6(PF_UNIX, SOCK_STREAM, 0)) < 0) {
    FUNC5("create socket failed");
    return -1;
  }

  int opts = FUNC3(sfd, F_GETFL);
  if (FUNC3(sfd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
    FUNC5("failed to set socket to non-blocking");
    return -1;
  }

  name.sun_family = AF_UNIX;
  FUNC9(name.sun_path, filename, sizeof(name.sun_path) - 1);

  if (FUNC2(sfd, (struct sockaddr*)&name, sizeof(name)) < 0) {
    FUNC1(sfd);
    FUNC5("connect failed");
    return -1;
  }

  return sfd;
}