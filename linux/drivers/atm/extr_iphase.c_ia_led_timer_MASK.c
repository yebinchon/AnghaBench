#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_char ;
typedef  int /*<<< orphan*/  u32 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  close_wait; scalar_t__ close_pending; scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_LED ; 
 int HZ ; 
 scalar_t__ IPHASE5575_BUS_CONTROL_REG ; 
 TYPE_1__** ia_dev ; 
 int /*<<< orphan*/  ia_timer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t iadev_count ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct timer_list *unused) {
 	unsigned long flags;
  	static u_char blinking[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        u_char i;
        static u32 ctrl_reg; 
        for (i = 0; i < iadev_count; i++) {
           if (ia_dev[i]) {
	      ctrl_reg = FUNC3(ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
	      if (blinking[i] == 0) {
		 blinking[i]++;
                 ctrl_reg &= (~CTRL_LED);
                 FUNC7(ctrl_reg, ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
                 FUNC1(ia_dev[i]);
              }
              else {
		 blinking[i] = 0;
		 ctrl_reg |= CTRL_LED;
                 FUNC7(ctrl_reg, ia_dev[i]->reg+IPHASE5575_BUS_CONTROL_REG);
                 FUNC4(&ia_dev[i]->tx_lock, flags);
                 if (ia_dev[i]->close_pending)  
                    FUNC6(&ia_dev[i]->close_wait);
                 FUNC0(ia_dev[i]);
                 FUNC5(&ia_dev[i]->tx_lock, flags);
              }
           }
        }
	FUNC2(&ia_timer, jiffies + HZ / 4);
 	return;
}