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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int MAX_STR_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,char*,char const*,int,int) ; 
 char* str_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

inline int FUNC3 (struct connection *c, const char *key, char *val, int vlen, int flags) {
  int l = FUNC1 (str_buf, MAX_STR_BUF_LEN, "VALUE %s %d %d\r\n", key, flags, vlen);
  FUNC0 (l <= MAX_STR_BUF_LEN);
  FUNC2 (&c->Out, str_buf, l);
  FUNC2 (&c->Out, val, vlen);
  FUNC2 (&c->Out, "\r\n", 2);
  return 0;
}