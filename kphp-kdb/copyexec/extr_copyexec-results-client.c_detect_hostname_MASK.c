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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* FUNC2 (char*) ; 
 int* hostname ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int*) ; 

int FUNC7 (void) {
  static char hostname_buffer[256];
  int r, i;
  if (!hostname || !*hostname) {
    hostname = FUNC2 ("HOSTNAME");
    if (!hostname || !*hostname) {
      int fd = FUNC4 ("/etc/hostname", O_RDONLY);
      if (fd < 0) {
        FUNC3 ("cannot read /etc/hostname: %m\n");
        FUNC1 (2);
      }
      r = FUNC5 (fd, hostname_buffer, 256);
      if (r <= 0 || r >= 256) {
        FUNC3 ("cannot read hostname from /etc/hostname: %d bytes read\n", r);
        FUNC1 (2);
      }
      hostname_buffer[r] = 0;
      FUNC0 (fd);
      hostname = hostname_buffer;
      while (*hostname == 9 || *hostname == 32) {
        hostname++;
      }
      i = 0;
      while (hostname[i] > 32) {
        i++;
      }
      hostname[i] = 0;
    }
  }
  if (!hostname || !*hostname) {
    FUNC3 ("fatal: cannot detect hostname\n");
    FUNC1 (2);
  }
  i = 0;
  while ((hostname[i] >= '0' && hostname[i] <= '9') || hostname[i] == '.' || hostname[i] == '-' || hostname[i] == '_' || (hostname[i] >= 'A' && hostname[i] <= 'Z') || (hostname[i] >= 'a' && hostname[i] <= 'z')) {
    i++;
  }
  if (hostname[i] || i >= 64) {
    FUNC3 ("fatal: bad hostname '%s'\n", hostname);
    FUNC1 (2);
  }
  FUNC6 (1, "hostname is %s\n", hostname);
  return 0;
}