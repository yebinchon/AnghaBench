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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,long long,long long) ; 
 long long FUNC2 (int,void*,long long) ; 

__attribute__((used)) static int FUNC3 (int fd, void *a, long long size) {
  long long bytes_read;
  do {
    bytes_read = FUNC2 (fd, a, size);
  } while (bytes_read < 0 && errno == EINTR);
  if (bytes_read < 0) {
    FUNC1 ("copyexec_aux_replay_binlog: read returns %lld instead of %lld. %m\n", bytes_read, size);
    FUNC0 ();
  }
  if (bytes_read != size) {
    FUNC1 ("copyexec_aux_replay_binlog: read returns %lld instead of %lld. %m\n", bytes_read, size);
    return -1;
  }
  return 0;
}