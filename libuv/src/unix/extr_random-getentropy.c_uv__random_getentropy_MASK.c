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
 int UV_ENOSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  once ; 
 scalar_t__ FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  uv__random_getentropy_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(void* buf, size_t buflen) {
  size_t pos;
  size_t stride;

  FUNC2(&once, uv__random_getentropy_init);

  if (&uv__getentropy == NULL)
    return UV_ENOSYS;

  /* getentropy() returns an error for requests > 256 bytes. */
  for (pos = 0, stride = 256; pos + stride < buflen; pos += stride)
    if (FUNC1((char *) buf + pos, stride))
      return FUNC0(errno);

  if (FUNC1((char *) buf + pos, buflen - pos))
    return FUNC0(errno);

  return 0;
}