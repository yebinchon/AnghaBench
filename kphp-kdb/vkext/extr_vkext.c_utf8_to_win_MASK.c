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
 int cur_buff_len ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4 (const char *s, int len, int max_len, int exit_on_error) {
  int st = 0;
  int acc = 0;
  int i;
  if (max_len && len > 3 * max_len) {
    len = 3 * max_len;
  }
  for (i = 0; i < len; i++) {
    if (max_len && cur_buff_len > max_len) {
      break;
    }
    unsigned char c = s[i];
    if (c < 0x80) {
      if (st) {
        if (exit_on_error) {
          return -1;
        }
        FUNC1 ("?1?", 3);
      }
      FUNC2 (c);
      st = 0;
      continue;
    }
    if ((c & 0xc0) == 0x80) {
      if (!st) {
        if (exit_on_error) {
          return -1;
        }
        FUNC1 ("?2?", 3);
        continue;
      }
      acc <<= 6;
      acc += c - 0x80;
      if (!--st) {
        if (exit_on_error && acc < 0x80) {
          return -1;
        }
        if (acc < 0x80) {
          FUNC1 ("?3?", 3);
        } else {
          int d = FUNC0 (acc);
          if (d != -1 && d) {
            FUNC2 (d);
          } else {
            FUNC2 ('&');
            FUNC2 ('#');
            FUNC3 (acc);
            FUNC2 (';');
          }
        }
      }
      continue;
    }
    if ((c & 0xc0) == 0xc0) {
      if (st) {
        if (exit_on_error) {
          return -1;
        }
        FUNC1 ("?4?", 3);
      }
      c -= 0xc0;
      st = 0;
      if (c < 32) {
        acc = c;
        st = 1;
      } else if (c < 48) {
        acc = c - 32;
        st = 2;
      } else if (c < 56) {
        acc = c - 48;
        st = 3;
      } else {
        if (exit_on_error) {
          return -1;
        }
        FUNC1 ("?5?", 3);
      }
    }
  }
  if (st) {
    if (exit_on_error) {
      return -1;
    }
    FUNC1 ("?6?", 3);
  }
  return 1;
}