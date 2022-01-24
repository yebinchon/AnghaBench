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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  fw ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ID_FW_REV ; 
 int /*<<< orphan*/  ATA_ID_FW_REV_LEN ; 
 int /*<<< orphan*/  ATA_ID_PROD ; 
 int /*<<< orphan*/  ATA_ID_PROD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libata_fua ; 
 scalar_t__ FUNC2 (unsigned char*,char*) ; 

__attribute__((used)) static int FUNC3(u16 *id)
{
	unsigned char model[ATA_ID_PROD_LEN + 1], fw[ATA_ID_FW_REV_LEN + 1];

	if (!libata_fua)
		return 0;
	if (!FUNC1(id))
		return 0;

	FUNC0(id, model, ATA_ID_PROD, sizeof(model));
	FUNC0(id, fw, ATA_ID_FW_REV, sizeof(fw));

	if (FUNC2(model, "Maxtor"))
		return 1;
	if (FUNC2(fw, "BANC1G10"))
		return 1;

	return 0; /* blacklisted */
}