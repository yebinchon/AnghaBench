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
struct ata_device {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  model_num ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ID_PROD ; 
 int /*<<< orphan*/  ATA_ID_PROD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const* const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const* const) ; 

__attribute__((used)) static int FUNC3(const struct ata_device *dev, char *modestr,
			       const char * const list[])
{
	unsigned char model_num[ATA_ID_PROD_LEN + 1];
	int i;

	FUNC0(dev->id, model_num, ATA_ID_PROD, sizeof(model_num));

	i = FUNC1(list, -1, model_num);
	if (i >= 0) {
		FUNC2("%s is not supported for %s\n", modestr, list[i]);
		return 1;
	}
	return 0;
}