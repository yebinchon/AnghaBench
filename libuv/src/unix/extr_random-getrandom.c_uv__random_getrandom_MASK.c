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
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int UV_EIO ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 size_t FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

int FUNC3(void* buf, size_t buflen) {
  ssize_t n;
  size_t pos;
  int rc;

  rc = FUNC2();
  if (rc != 0)
    return rc;

  for (pos = 0; pos != buflen; pos += n) {
    do {
      n = buflen - pos;

      /* Most getrandom() implementations promise that reads <= 256 bytes
       * will always succeed and won't be interrupted by signals.
       * It's therefore useful to split it up in smaller reads because
       * one big read may, in theory, continuously fail with EINTR.
       */
      if (n > 256)
        n = 256;

      n = FUNC1((char *) buf + pos, n, 0);
    } while (n == -1 && errno == EINTR);

    if (n == -1)
      return FUNC0(errno);

    if (n == 0)
      return UV_EIO;
  }

  return 0;
}