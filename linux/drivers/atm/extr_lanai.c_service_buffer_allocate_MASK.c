#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dmaaddr; int /*<<< orphan*/ * start; } ;
struct lanai_dev {TYPE_1__ service; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int SERVICE_ENTRIES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ServWrite_Reg ; 
 int /*<<< orphan*/  ServiceStuff_Reg ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct lanai_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct lanai_dev *lanai)
{
	FUNC3(&lanai->service, SERVICE_ENTRIES * 4, 8,
	    lanai->pci);
	if (FUNC7(lanai->service.start == NULL))
		return -ENOMEM;
	FUNC0("allocated service buffer at %p, size %zu(%d)\n",
	    lanai->service.start,
	    FUNC4(&lanai->service),
	    FUNC5(&lanai->service));
	/* Clear ServWrite register to be safe */
	FUNC6(lanai, 0, ServWrite_Reg);
	/* ServiceStuff register contains size and address of buffer */
	FUNC6(lanai,
	    FUNC2(FUNC5(&lanai->service)) |
	    FUNC1(lanai->service.dmaaddr),
	    ServiceStuff_Reg);
	return 0;
}