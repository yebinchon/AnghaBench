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
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC1(struct argv_array *env, const char *key, const char *val)
{
	FUNC0(env, "%s=%s", key, val);
}