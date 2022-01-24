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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,char*,char*,unsigned int) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (char *buf, int buf_len, unsigned result) {
  int status = result >> 28;
  result &= 0x0fffffffU;
  FUNC0 (FUNC1 (buf, buf_len, "%s:0x%04x", FUNC2 (status), result) < buf_len);
}