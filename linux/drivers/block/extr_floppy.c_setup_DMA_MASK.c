#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int reset; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* done ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ length; int cmd_count; int flags; scalar_t__ kernel_data; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 TYPE_3__* FDCS ; 
 int FD_RAW_READ ; 
 unsigned long FUNC0 () ; 
 TYPE_2__* cont ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtual_dma_port ; 

__attribute__((used)) static void FUNC15(void)
{
	unsigned long f;

	if (raw_cmd->length == 0) {
		int i;

		FUNC10("zero dma transfer size:");
		for (i = 0; i < raw_cmd->cmd_count; i++)
			FUNC9("%x,", raw_cmd->cmd[i]);
		FUNC9("\n");
		cont->done(0);
		FDCS->reset = 1;
		return;
	}
	if (((unsigned long)raw_cmd->kernel_data) % 512) {
		FUNC10("non aligned address: %p\n", raw_cmd->kernel_data);
		cont->done(0);
		FDCS->reset = 1;
		return;
	}
	f = FUNC0();
	FUNC3();
#ifdef fd_dma_setup
	if (fd_dma_setup(raw_cmd->kernel_data, raw_cmd->length,
			 (raw_cmd->flags & FD_RAW_READ) ?
			 DMA_MODE_READ : DMA_MODE_WRITE, FDCS->address) < 0) {
		release_dma_lock(f);
		cont->done(0);
		FDCS->reset = 1;
		return;
	}
	release_dma_lock(f);
#else
	FUNC2();
	FUNC1(raw_cmd->kernel_data, raw_cmd->length);
	FUNC8((raw_cmd->flags & FD_RAW_READ) ?
			DMA_MODE_READ : DMA_MODE_WRITE);
	FUNC6(raw_cmd->kernel_data);
	FUNC7(raw_cmd->length);
	virtual_dma_port = FDCS->address;
	FUNC5();
	FUNC11(f);
#endif
}