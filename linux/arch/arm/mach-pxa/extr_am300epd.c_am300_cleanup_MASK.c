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
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int DB0_GPIO_PIN ; 
 int DB15_GPIO_PIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDY_GPIO_PIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* gpios ; 

__attribute__((used)) static void FUNC4(struct broadsheetfb_par *par)
{
	int i;

	FUNC2(FUNC1(RDY_GPIO_PIN), par);

	for (i = 0; i < FUNC0(gpios); i++)
		FUNC3(gpios[i]);

	for (i = DB0_GPIO_PIN; i <= DB15_GPIO_PIN; i++)
		FUNC3(i);

}