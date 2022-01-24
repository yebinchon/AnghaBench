#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct img_ascii_lcd_ctx {char* message; int message_len; int /*<<< orphan*/  timer; scalar_t__ scroll_pos; TYPE_1__* pdev; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct img_ascii_lcd_ctx *ctx,
			     const char *msg, ssize_t count)
{
	char *new_msg;

	/* stop the scroll timer */
	FUNC0(&ctx->timer);

	if (count == -1)
		count = FUNC5(msg);

	/* if the string ends with a newline, trim it */
	if (msg[count - 1] == '\n')
		count--;

	new_msg = FUNC2(&ctx->pdev->dev, count + 1, GFP_KERNEL);
	if (!new_msg)
		return -ENOMEM;

	FUNC4(new_msg, msg, count);
	new_msg[count] = 0;

	if (ctx->message)
		FUNC1(&ctx->pdev->dev, ctx->message);

	ctx->message = new_msg;
	ctx->message_len = count;
	ctx->scroll_pos = 0;

	/* update the LCD */
	FUNC3(&ctx->timer);

	return 0;
}