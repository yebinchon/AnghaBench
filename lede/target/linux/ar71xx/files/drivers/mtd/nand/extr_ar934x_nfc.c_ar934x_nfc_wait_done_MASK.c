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
struct ar934x_nfc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ar934x_nfc*) ; 
 int FUNC1 (struct ar934x_nfc*) ; 
 int FUNC2 (struct ar934x_nfc*) ; 
 int FUNC3 (struct ar934x_nfc*) ; 

__attribute__((used)) static int
FUNC4(struct ar934x_nfc *nfc)
{
	int ret;

	if (FUNC0(nfc))
		ret = FUNC3(nfc);
	else
		ret = FUNC1(nfc);

	if (ret)
		return ret;

	return FUNC2(nfc);
}