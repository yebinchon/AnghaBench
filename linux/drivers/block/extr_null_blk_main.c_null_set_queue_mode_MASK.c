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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_Q_BIO ; 
 int /*<<< orphan*/  NULL_Q_MQ ; 
 int /*<<< orphan*/  g_queue_mode ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const char *str, const struct kernel_param *kp)
{
	return FUNC0(str, &g_queue_mode, NULL_Q_BIO, NULL_Q_MQ);
}