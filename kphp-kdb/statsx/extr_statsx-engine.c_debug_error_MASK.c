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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  verbosity ; 

void FUNC2 (const char *szAction, const char *szMsg, const char *key, int len) {
  if (!verbosity) { return; }
  FUNC1 (stderr, "Bad %s (key=\"", szAction);
  FUNC0 (key, len);
  FUNC1 (stderr, "\"); %s\n", szMsg);
}