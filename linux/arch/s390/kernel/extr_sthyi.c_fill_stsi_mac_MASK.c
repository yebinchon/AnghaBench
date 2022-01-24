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
typedef  scalar_t__ u64 ;
struct sysinfo_1_1_1 {int /*<<< orphan*/  sequence; int /*<<< orphan*/  plant; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  infmval1; int /*<<< orphan*/  infmseq; int /*<<< orphan*/  infmpman; int /*<<< orphan*/  infmmanu; int /*<<< orphan*/  infmtype; scalar_t__ infmname; } ;
struct sthyi_sctns {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ID_VLD ; 
 int /*<<< orphan*/  MAC_NAME_VLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sysinfo_1_1_1*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct sthyi_sctns *sctns,
			  struct sysinfo_1_1_1 *sysinfo)
{
	FUNC1(sctns->mac.infmname);
	if (*(u64 *)sctns->mac.infmname != 0)
		sctns->mac.infmval1 |= MAC_NAME_VLD;

	if (FUNC2(sysinfo, 1, 1, 1))
		return;

	FUNC0(sctns->mac.infmtype, sysinfo->type, sizeof(sctns->mac.infmtype));
	FUNC0(sctns->mac.infmmanu, sysinfo->manufacturer, sizeof(sctns->mac.infmmanu));
	FUNC0(sctns->mac.infmpman, sysinfo->plant, sizeof(sctns->mac.infmpman));
	FUNC0(sctns->mac.infmseq, sysinfo->sequence, sizeof(sctns->mac.infmseq));

	sctns->mac.infmval1 |= MAC_ID_VLD;
}