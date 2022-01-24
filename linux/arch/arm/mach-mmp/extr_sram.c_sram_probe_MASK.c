#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sram_platdata {int /*<<< orphan*/  granularity; int /*<<< orphan*/  pool_name; } ;
struct sram_bank_info {struct sram_bank_info* pool_name; scalar_t__ sram_virt; int /*<<< orphan*/  gpool; int /*<<< orphan*/  node; scalar_t__ sram_size; scalar_t__ sram_phys; int /*<<< orphan*/  granularity; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_3__ {struct sram_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sram_bank_info*) ; 
 struct sram_bank_info* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sram_bank_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct sram_bank_info*) ; 
 scalar_t__ FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  sram_bank_list ; 
 int /*<<< orphan*/  sram_lock ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct sram_platdata *pdata = pdev->dev.platform_data;
	struct sram_bank_info *info;
	struct resource *res;
	int ret = 0;

	if (!pdata || !pdata->pool_name)
		return -ENODEV;

	info = FUNC10(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(&pdev->dev, "no memory resource defined\n");
		ret = -ENODEV;
		goto out;
	}

	if (!FUNC16(res))
		return 0;

	info->sram_phys   = (phys_addr_t)res->start;
	info->sram_size   = FUNC16(res);
	info->sram_virt   = FUNC6(info->sram_phys, info->sram_size);
	info->pool_name	  = FUNC9(pdata->pool_name, GFP_KERNEL);
	info->granularity = pdata->granularity;

	info->gpool = FUNC3(FUNC5(info->granularity), -1);
	if (!info->gpool) {
		FUNC0(&pdev->dev, "create pool failed\n");
		ret = -ENOMEM;
		goto create_pool_err;
	}

	ret = FUNC2(info->gpool, (unsigned long)info->sram_virt,
				info->sram_phys, info->sram_size, -1);
	if (ret < 0) {
		FUNC0(&pdev->dev, "add new chunk failed\n");
		ret = -ENOMEM;
		goto add_chunk_err;
	}

	FUNC12(&sram_lock);
	FUNC11(&info->node, &sram_bank_list);
	FUNC13(&sram_lock);

	FUNC15(pdev, info);

	FUNC1(&pdev->dev, "initialized\n");
	return 0;

add_chunk_err:
	FUNC4(info->gpool);
create_pool_err:
	FUNC7(info->sram_virt);
	FUNC8(info->pool_name);
out:
	FUNC8(info);
	return ret;
}