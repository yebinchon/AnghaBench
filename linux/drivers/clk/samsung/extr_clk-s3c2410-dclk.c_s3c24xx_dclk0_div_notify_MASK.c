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
struct s3c24xx_dclk {int dummy; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCLKCON_DCLK0_CMP_SHIFT ; 
 int /*<<< orphan*/  DCLKCON_DCLK0_DIV_SHIFT ; 
 int NOTIFY_DONE ; 
 unsigned long POST_RATE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct s3c24xx_dclk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3c24xx_dclk* FUNC1 (struct notifier_block*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb,
			       unsigned long event, void *data)
{
	struct s3c24xx_dclk *s3c24xx_dclk = FUNC1(nb);

	if (event == POST_RATE_CHANGE) {
		FUNC0(s3c24xx_dclk,
			DCLKCON_DCLK0_DIV_SHIFT, DCLKCON_DCLK0_CMP_SHIFT);
	}

	return NOTIFY_DONE;
}