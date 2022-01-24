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
 int FUNC0 (char*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qGet ; 
 int /*<<< orphan*/  qGetLen ; 
 int /*<<< orphan*/  qPost ; 
 int /*<<< orphan*/  qPostLen ; 

int FUNC1 (char *buffer, int b_len, const char *arg_name) {
  int res = FUNC0 (buffer, b_len, arg_name, qGet, qGetLen);
  if (res < 0) {
    res = FUNC0 (buffer, b_len, arg_name, qPost, qPostLen);
  }
  return res;
}