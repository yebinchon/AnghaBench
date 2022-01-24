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
 int /*<<< orphan*/  cond_true ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  loss_cond_down ; 
 int /*<<< orphan*/  loss_cond_up ; 
 int /*<<< orphan*/  loss_core ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    size_t i;

    loss_cond_up = cond_true;

    for (i = 0; i != 100; ++i) {
        FUNC0(&loss_cond_down, 3, 4);
        FUNC1("75%", loss_core);

        FUNC0(&loss_cond_down, 1, 2);
        FUNC1("50%", loss_core);

        FUNC0(&loss_cond_down, 1, 4);
        FUNC1("25%", loss_core);

        FUNC0(&loss_cond_down, 1, 10);
        FUNC1("10%", loss_core);

        FUNC0(&loss_cond_down, 1, 20);
        FUNC1("5%", loss_core);

        FUNC0(&loss_cond_down, 1, 40);
        FUNC1("2.5%", loss_core);

        FUNC0(&loss_cond_down, 1, 64);
        FUNC1("1.6%", loss_core);
    }
}