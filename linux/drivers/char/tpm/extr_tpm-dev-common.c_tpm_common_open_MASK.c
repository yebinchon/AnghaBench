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
struct tpm_space {int dummy; } ;
struct tpm_chip {int dummy; } ;
struct file_priv {int response_read; int /*<<< orphan*/  async_wait; int /*<<< orphan*/  async_work; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  user_read_timer; int /*<<< orphan*/  buffer_mutex; struct tpm_space* space; struct tpm_chip* chip; } ;
struct file {struct file_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_dev_async_work ; 
 int /*<<< orphan*/  tpm_timeout_work ; 
 int /*<<< orphan*/  user_reader_timeout ; 

void FUNC4(struct file *file, struct tpm_chip *chip,
		     struct file_priv *priv, struct tpm_space *space)
{
	priv->chip = chip;
	priv->space = space;
	priv->response_read = true;

	FUNC2(&priv->buffer_mutex);
	FUNC3(&priv->user_read_timer, user_reader_timeout, 0);
	FUNC0(&priv->timeout_work, tpm_timeout_work);
	FUNC0(&priv->async_work, tpm_dev_async_work);
	FUNC1(&priv->async_wait);
	file->private_data = priv;
}