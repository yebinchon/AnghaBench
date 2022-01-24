#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lanai_dev {int /*<<< orphan*/  conf2; TYPE_1__* cbrvcc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vci; int /*<<< orphan*/  qos; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBR_ICG_Reg ; 
 int /*<<< orphan*/  CBR_PTR_Reg ; 
 int /*<<< orphan*/  CONFIG2_CBR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct lanai_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lanai_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct lanai_dev *lanai)
{
	FUNC2(lanai, FUNC1(&lanai->cbrvcc->qos), CBR_ICG_Reg);
	FUNC2(lanai, lanai->cbrvcc->vci, CBR_PTR_Reg);
	lanai->conf2 |= CONFIG2_CBR_ENABLE;
	FUNC0(lanai);
}