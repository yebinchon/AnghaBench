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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int GPIO_GPIO ; 
 int GPIO_OUT ; 
 int GPIO_PORTC ; 
 int PC20_PF_SSI1_FS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	FUNC2(GPIO_PORTC | 20 | GPIO_GPIO | GPIO_OUT);
	FUNC0(GPIO_PORTC + 20, 1);
	FUNC3(2);
	FUNC0(GPIO_PORTC + 20, 0);
	FUNC2(PC20_PF_SSI1_FS);
	FUNC1(2);
}