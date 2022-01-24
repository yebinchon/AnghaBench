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
typedef  int u32 ;

/* Variables and functions */
 int AR71XX_RESET_REG_RESET_MODULE ; 
 int AR724X_RESET_REG_RESET_MODULE ; 
 int AR913X_RESET_REG_RESET_MODULE ; 
 int AR933X_RESET_REG_RESET_MODULE ; 
 int AR934X_RESET_REG_RESET_MODULE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int QCA953X_RESET_REG_RESET_MODULE ; 
 int QCA955X_RESET_REG_RESET_MODULE ; 
 int QCA956X_RESET_REG_RESET_MODULE ; 
 int /*<<< orphan*/  ath79_device_reset_lock ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC14(u32 mask)
{
	unsigned long flags;
	u32 reg;
	u32 t;

	if (FUNC3())
		reg = AR71XX_RESET_REG_RESET_MODULE;
	else if (FUNC4())
		reg = AR724X_RESET_REG_RESET_MODULE;
	else if (FUNC5())
		reg = AR913X_RESET_REG_RESET_MODULE;
	else if (FUNC6())
		reg = AR933X_RESET_REG_RESET_MODULE;
	else if (FUNC7())
		reg = AR934X_RESET_REG_RESET_MODULE;
	else if (FUNC8())
		reg = QCA953X_RESET_REG_RESET_MODULE;
	else if (FUNC9())
		reg = QCA955X_RESET_REG_RESET_MODULE;
	else if (FUNC10() || FUNC11())
		reg = QCA956X_RESET_REG_RESET_MODULE;
	else
		FUNC0();

	FUNC12(&ath79_device_reset_lock, flags);
	t = FUNC1(reg);
	FUNC2(reg, t | mask);
	FUNC13(&ath79_device_reset_lock, flags);
}