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
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  driver; } ;
struct amba_id {int dummy; } ;
struct amba_driver {int (* probe ) (struct amba_device*,struct amba_id const*) ;int /*<<< orphan*/  id_table; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amba_device*) ; 
 struct amba_id* FUNC1 (int /*<<< orphan*/ ,struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*) ; 
 int FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct amba_device*,struct amba_id const*) ; 
 struct amba_device* FUNC13 (struct device*) ; 
 struct amba_driver* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct device *dev)
{
	struct amba_device *pcdev = FUNC13(dev);
	struct amba_driver *pcdrv = FUNC14(dev->driver);
	const struct amba_id *id = FUNC1(pcdrv->id_table, pcdev);
	int ret;

	do {
		ret = FUNC5(dev->of_node, false);
		if (ret < 0)
			break;

		ret = FUNC3(dev, true);
		if (ret)
			break;

		ret = FUNC0(pcdev);
		if (ret) {
			FUNC4(dev, true);
			break;
		}

		FUNC8(dev);
		FUNC10(dev);
		FUNC7(dev);

		ret = pcdrv->probe(pcdev, id);
		if (ret == 0)
			break;

		FUNC6(dev);
		FUNC11(dev);
		FUNC9(dev);

		FUNC2(pcdev);
		FUNC4(dev, true);
	} while (0);

	return ret;
}