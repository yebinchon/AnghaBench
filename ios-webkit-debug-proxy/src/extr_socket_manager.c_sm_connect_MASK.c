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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 char* FUNC4 (char const*,size_t) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(const char *socket_addr) {
  if (FUNC3(socket_addr, "unix:", 5) == 0) {
#ifdef WIN32
    return -1;
#else
    return FUNC2(socket_addr + 5);
#endif
  } else {
    const char *s_port = FUNC5(socket_addr, ':');
    int port = 0;

    if (s_port) {
      port = FUNC6(s_port + 1, NULL, 0);
    }

    if (port <= 0) {
      return -1;
    }

    size_t host_len = s_port - socket_addr;
    char *host = FUNC4(socket_addr, host_len);

    int ret = FUNC1(host, port);
    FUNC0(host);
    return ret;
  }
}