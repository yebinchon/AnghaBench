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
struct timer_list {int dummy; } ;
struct file_priv {int /*<<< orphan*/  timeout_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 struct file_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct file_priv* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_read_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct file_priv *priv = FUNC0(priv, t, user_read_timer);

	FUNC1("TPM user space timeout is deprecated (pid=%d)\n",
		FUNC3(current));

	FUNC2(&priv->timeout_work);
}