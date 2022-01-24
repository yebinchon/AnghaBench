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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void** hcyf ; 

const char *FUNC1 (unsigned char *a, int len) {
  static char buf[16384];
  char *p = buf, *e = buf + sizeof (buf);
  int i;
  for (i = 0; i < len; i++) {
    FUNC0 (p + 3 <= e);
    *p++ = ' ';
    *p++ = hcyf[(a[i] >> 4) & 15];
    *p++ = hcyf[a[i] & 15];
  }
  FUNC0 (p < e);
  *p = 0;
  return buf + 1;
}