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
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ inbuf ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (int) ; 

void FUNC4 (const char *s, int len) { /* {{{ */
  char *ans = FUNC3 (len);
  FUNC2 (ans, s, len);
  if (inbuf) {
    inbuf = FUNC1 (inbuf);      
  }
  inbuf = FUNC0 (ans, len);
}