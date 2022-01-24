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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 (char*) ; 

int FUNC3 (char *x) {
  char md5_buf[32];
  int l = FUNC2 (x);
  FUNC1 (x, l, md5_buf);

  return FUNC0 (md5_buf[29]) * 256 + FUNC0 (md5_buf[30]) * 16 + FUNC0 (md5_buf[31]);
}