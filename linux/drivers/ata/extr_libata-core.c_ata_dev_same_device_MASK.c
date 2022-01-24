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
struct ata_device {unsigned int class; int /*<<< orphan*/ * id; } ;
typedef  int /*<<< orphan*/  serial ;
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ID_PROD ; 
 int /*<<< orphan*/  ATA_ID_PROD_LEN ; 
 int /*<<< orphan*/  ATA_ID_SERNO ; 
 int /*<<< orphan*/  ATA_ID_SERNO_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct ata_device *dev, unsigned int new_class,
			       const u16 *new_id)
{
	const u16 *old_id = dev->id;
	unsigned char model[2][ATA_ID_PROD_LEN + 1];
	unsigned char serial[2][ATA_ID_SERNO_LEN + 1];

	if (dev->class != new_class) {
		FUNC0(dev, "class mismatch %d != %d\n",
			     dev->class, new_class);
		return 0;
	}

	FUNC1(old_id, model[0], ATA_ID_PROD, sizeof(model[0]));
	FUNC1(new_id, model[1], ATA_ID_PROD, sizeof(model[1]));
	FUNC1(old_id, serial[0], ATA_ID_SERNO, sizeof(serial[0]));
	FUNC1(new_id, serial[1], ATA_ID_SERNO, sizeof(serial[1]));

	if (FUNC2(model[0], model[1])) {
		FUNC0(dev, "model number mismatch '%s' != '%s'\n",
			     model[0], model[1]);
		return 0;
	}

	if (FUNC2(serial[0], serial[1])) {
		FUNC0(dev, "serial number mismatch '%s' != '%s'\n",
			     serial[0], serial[1]);
		return 0;
	}

	return 1;
}