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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3 (void *start, void *end) {
  char *ptr = start, c;
  while (ptr < (char *) end) {
    int s = (char *) end - ptr, i;
    if (s > 16) { 
      s = 16;
    }
    FUNC0 (stderr, "%08hhx", (int) (ptr - (char *) start));
    for (i = 0; i < 16; i++) {
      c = ' ';
      if (i == 8) {
        FUNC1 (' ', stderr);
      }
      if (i < s) {
        FUNC0 (stderr, "%c%02x", c, (unsigned char) ptr[i]);
      } else {
        FUNC0 (stderr, "%c  ", c);
      }
    }
    c = ' ';
    FUNC0 (stderr, "%c  ", c);
    for (i = 0; i < s; i++) {
      FUNC2 ((unsigned char) ptr[i] < ' ' ? '.' : ptr[i], stderr);
    }
    FUNC2 ('\n', stderr);
    ptr += 16;
  }
  return end - start;
}