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
typedef  int /*<<< orphan*/  JSON_Value ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

size_t FUNC1(const JSON_Value *value) {
    char num_buf[1100]; /* recursively allocating buffer on stack is a bad idea, so let's do it only once */
    int res = FUNC0(value, NULL, 0, 0, num_buf);
    return res < 0 ? 0 : (size_t)(res + 1);
}