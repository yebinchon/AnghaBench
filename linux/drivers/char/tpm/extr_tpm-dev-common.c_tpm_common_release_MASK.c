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
struct file_priv {scalar_t__ response_length; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  user_read_timer; int /*<<< orphan*/  async_work; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct file *file, struct file_priv *priv)
{
	FUNC1(&priv->async_work);
	FUNC0(&priv->user_read_timer);
	FUNC1(&priv->timeout_work);
	file->private_data = NULL;
	priv->response_length = 0;
}