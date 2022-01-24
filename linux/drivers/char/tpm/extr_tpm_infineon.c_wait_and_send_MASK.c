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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_XFE ; 
 int /*<<< orphan*/  WRFIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tpm_chip *chip, u8 sendbyte)
{
	FUNC1(chip, STAT_XFE);
	FUNC0(sendbyte, WRFIFO);
}