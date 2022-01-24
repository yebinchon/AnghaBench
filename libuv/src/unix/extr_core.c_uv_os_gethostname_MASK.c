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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int UV_MAXHOSTNAMESIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 

int FUNC4(char* buffer, size_t* size) {
  /*
    On some platforms, if the input buffer is not large enough, gethostname()
    succeeds, but truncates the result. libuv can detect this and return ENOBUFS
    instead by creating a large enough buffer and comparing the hostname length
    to the size input.
  */
  char buf[UV_MAXHOSTNAMESIZE];
  size_t len;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  if (FUNC1(buf, sizeof(buf)) != 0)
    return FUNC0(errno);

  buf[sizeof(buf) - 1] = '\0'; /* Null terminate, just to be safe. */
  len = FUNC3(buf);

  if (len >= *size) {
    *size = len + 1;
    return UV_ENOBUFS;
  }

  FUNC2(buffer, buf, len + 1);
  *size = len;
  return 0;
}