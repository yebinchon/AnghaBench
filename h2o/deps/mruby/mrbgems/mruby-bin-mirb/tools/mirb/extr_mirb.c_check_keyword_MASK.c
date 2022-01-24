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
 scalar_t__ FUNC0 (unsigned char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC3(const char *buf, const char *word)
{
  const char *p = buf;
  size_t len = FUNC1(word);

  /* skip preceding spaces */
  while (*p && FUNC0((unsigned char)*p)) {
    p++;
  }
  /* check keyword */
  if (FUNC2(p, word, len) != 0) {
    return 0;
  }
  p += len;
  /* skip trailing spaces */
  while (*p) {
    if (!FUNC0((unsigned char)*p)) return 0;
    p++;
  }
  return 1;
}