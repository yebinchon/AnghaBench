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
 int /*<<< orphan*/  FUNC0 (unsigned short const*,char*) ; 

char *FUNC1 (const unsigned char a[16], char *buf) {
  static char abuf[64];
  if (!buf) {
    buf = abuf;
  }
  FUNC0 ((const unsigned short *) a, buf);
  return buf;
}