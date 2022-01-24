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
 int* P ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,char*) ; 
 int FUNC2 (int*,int,char**,int*,int /*<<< orphan*/ ) ; 

int FUNC3 (int len) {
  FUNC0 (!(len % 4));
  int code = P[5], ilen = (len / 4) - 7;
  int l;
  char *text;
  FUNC0 (ilen > 0);
  int r = FUNC2 (&P[6], ilen, &text, &l, 0);
  FUNC0 (r == ilen);
  FUNC1 ("Receive RPC_REQ_ERROR (code: %d, text: \"%.*s\")\n", code, l, text);
  return 0;
}