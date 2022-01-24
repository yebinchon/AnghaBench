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
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char const*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC1(char *str, size_t buf_len, const char *prefix,
    const char *mutex, const char *counter) {
	FUNC0(str, buf_len, "stats.%s.%s.%s", prefix, mutex, counter);
}