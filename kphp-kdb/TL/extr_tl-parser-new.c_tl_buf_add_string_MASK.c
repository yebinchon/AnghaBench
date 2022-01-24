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
 char* buf ; 
 int buf_pos ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 

void FUNC2 (char *s, int len) {
  if (len < 0) { len = FUNC1 (s); }
  buf[buf_pos ++] = ' ';
  FUNC0 (buf + buf_pos, s, len); buf_pos += len;
  buf[buf_pos] = 0;
}