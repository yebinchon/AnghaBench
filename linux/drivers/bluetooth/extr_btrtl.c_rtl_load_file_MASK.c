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
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,char const*) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev, const char *name, u8 **buff)
{
	const struct firmware *fw;
	int ret;

	FUNC3(hdev, "loading %s", name);
	ret = FUNC2(&fw, name, &hdev->dev);
	if (ret < 0)
		return ret;
	ret = fw->size;
	*buff = FUNC0(fw->data, ret, GFP_KERNEL);
	if (!*buff)
		ret = -ENOMEM;

	FUNC1(fw);

	return ret;
}