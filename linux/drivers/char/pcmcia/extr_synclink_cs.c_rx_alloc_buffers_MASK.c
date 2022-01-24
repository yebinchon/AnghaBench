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
struct TYPE_4__ {int rx_buf_size; int max_frame_size; int rx_buf_total_size; int rx_buf_count; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  flag_buf; } ;
typedef  int /*<<< orphan*/  RXBUF ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(MGSLPC_INFO *info)
{
	/* each buffer has header and data */
	info->rx_buf_size = sizeof(RXBUF) + info->max_frame_size;

	/* calculate total allocation size for 8 buffers */
	info->rx_buf_total_size = info->rx_buf_size * 8;

	/* limit total allocated memory */
	if (info->rx_buf_total_size > 0x10000)
		info->rx_buf_total_size = 0x10000;

	/* calculate number of buffers */
	info->rx_buf_count = info->rx_buf_total_size / info->rx_buf_size;

	info->rx_buf = FUNC1(info->rx_buf_total_size, GFP_KERNEL);
	if (info->rx_buf == NULL)
		return -ENOMEM;

	/* unused flag buffer to satisfy receive_buf calling interface */
	info->flag_buf = FUNC2(info->max_frame_size, GFP_KERNEL);
	if (!info->flag_buf) {
		FUNC0(info->rx_buf);
		info->rx_buf = NULL;
		return -ENOMEM;
	}
	
	FUNC3(info);
	return 0;
}