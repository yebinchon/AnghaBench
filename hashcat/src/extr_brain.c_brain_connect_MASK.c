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
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  so_error ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const O_NONBLOCK ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int,struct sockaddr const*,int) ; 
 int errno ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int const) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int const) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 

int FUNC10 (int sockfd, const struct sockaddr *addr, socklen_t addrlen, const int timeout)
{
  #if defined (_WIN)

  if (timeout == 99999999)
  {
    // timeout not support on windows
  }

  if (connect (sockfd, addr, addrlen) == SOCKET_ERROR)
  {
    int err = WSAGetLastError ();

    char msg[256];

    memset (msg, 0, sizeof (msg));

    FormatMessage (FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,   // flags
                   NULL,                // lpsource
                   err,                 // message id
                   MAKELANGID (LANG_NEUTRAL, SUBLANG_DEFAULT),    // languageid
                   msg,                 // output buffer
                   sizeof (msg),        // size of msgbuf, bytes
                   NULL);               // va_list of arguments

    brain_logging (stderr, 0, "connect: %s\n", msg);

    return -1;
  }

  #else

  const int old_mode = FUNC5 (sockfd, F_GETFL, 0);

  if (FUNC5 (sockfd, F_SETFL, old_mode | O_NONBLOCK) == -1)
  {
    FUNC3 (stderr, 0, "fcntl: %s\n", FUNC9 (errno));

    return -1;
  }

  FUNC4 (sockfd, addr, addrlen);

  const int rc_select = FUNC8 (sockfd, timeout);

  if (rc_select == -1) return -1;

  if (rc_select == 0)
  {
    FUNC3 (stderr, 0, "connect: timeout\n");

    return -1;
  }

  int so_error = 0;

  socklen_t len = sizeof (so_error);

  if (FUNC6 (sockfd, SOL_SOCKET, SO_ERROR, &so_error, &len) == -1)
  {
    FUNC3 (stderr, 0, "getsockopt: %s\n", FUNC9 (errno));

    return -1;
  }

  if (FUNC5 (sockfd, F_SETFL, old_mode) == -1)
  {
    FUNC3 (stderr, 0, "fcntl: %s\n", FUNC9 (errno));

    return -1;
  }

  if (so_error != 0)
  {
    FUNC3 (stderr, 0, "connect: %s\n", FUNC9 (so_error));

    return -1;
  }

  #endif

  return 0;
}