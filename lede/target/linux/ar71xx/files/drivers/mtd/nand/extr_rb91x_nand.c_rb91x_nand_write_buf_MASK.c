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
struct rb91x_nand_info {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 struct rb91x_nand_info* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb91x_nand_info*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, const u8 *buf, int len)
{
	struct rb91x_nand_info *rbni = FUNC0(mtd);

	FUNC1(rbni, buf, len);
}