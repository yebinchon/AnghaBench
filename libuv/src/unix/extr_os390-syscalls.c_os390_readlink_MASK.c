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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char const*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 

ssize_t FUNC8(const char* path, char* buf, size_t len) {
  ssize_t rlen;
  ssize_t vlen;
  ssize_t plen;
  char* delimiter;
  char old_delim;
  char* tmpbuf;
  char realpathstr[PATH_MAX + 1];

  tmpbuf = FUNC7(len + 1);
  if (tmpbuf == NULL) {
    errno = ENOMEM;
    return -1;
  }

  rlen = FUNC1(path, tmpbuf, len);
  if (rlen < 0) {
    FUNC6(tmpbuf);
    return rlen;
  }

  if (rlen < 3 || FUNC5("/$", tmpbuf, 2) != 0) {
    /* Straightforward readlink. */
    FUNC0(buf, tmpbuf, rlen);
    FUNC6(tmpbuf);
    return rlen;
  }

  /*
   * There is a parmlib variable at the beginning
   * which needs interpretation.
   */
  tmpbuf[rlen] = '\0';
  delimiter = FUNC3(tmpbuf + 2, '/');
  if (delimiter == NULL)
    /* No slash at the end */
    delimiter = FUNC3(tmpbuf + 2, '\0');

  /* Read real path of the variable. */
  old_delim = *delimiter;
  *delimiter = '\0';
  if (FUNC2(tmpbuf, realpathstr) == NULL) {
    FUNC6(tmpbuf);
    return -1;
  }

  /* realpathstr is not guaranteed to end with null byte.*/
  realpathstr[PATH_MAX] = '\0';

  /* Reset the delimiter and fill up the buffer. */
  *delimiter = old_delim;
  plen = FUNC4(delimiter);
  vlen = FUNC4(realpathstr);
  rlen = plen + vlen;
  if (rlen > len) {
    FUNC6(tmpbuf);
    errno = ENAMETOOLONG;
    return -1;
  }
  FUNC0(buf, realpathstr, vlen);
  FUNC0(buf + vlen, delimiter, plen);

  /* Done using temporary buffer. */
  FUNC6(tmpbuf);

  return rlen;
}