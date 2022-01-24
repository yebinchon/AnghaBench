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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

jv FUNC4(jv a, const char* buf, int len) {
  if (FUNC3(buf, buf+len)) {
    a = FUNC1(a, buf, len);
  } else {
    jv b = FUNC2(buf, len);
    a = FUNC0(a, b);
  }
  return a;
}