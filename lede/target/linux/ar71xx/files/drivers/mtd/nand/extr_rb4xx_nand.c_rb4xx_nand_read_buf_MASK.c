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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, unsigned char *buf,
				int len)
{
	int err;

	err = FUNC1(buf, len);
	if (err)
		FUNC0("rb4xx_nand: read buf failed, err=%d\n", err);
}