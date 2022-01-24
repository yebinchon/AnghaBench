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
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (scalar_t__) ; 

char *
FUNC2 (const char *src)
{
  char *dest, *q;
  const char *p = src;

  if (src == NULL || *src == '\0')
    return NULL;

  dest = FUNC1 (FUNC0 (src) + 1);
  q = dest;

  while (*p) {
    if (*p == '\\') {
      p++;
      switch (*p) {
      case '\0':
        /* warning... */
        goto out;
      case 'n':
        *q++ = '\n';
        break;
      case 'r':
        *q++ = '\r';
        break;
      case 't':
        *q++ = '\t';
        break;
      default:
        *q++ = *p;
        break;
      }
    } else
      *q++ = *p;
    p++;
  }
out:
  *q = 0;

  return dest;
}