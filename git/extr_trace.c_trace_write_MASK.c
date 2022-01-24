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
struct trace_key {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct trace_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct trace_key *key, const void *buf, unsigned len)
{
	if (FUNC4(FUNC0(key), buf, len) < 0) {
		FUNC3("unable to write trace for %s: %s",
			key->key, FUNC1(errno));
		FUNC2(key);
	}
}