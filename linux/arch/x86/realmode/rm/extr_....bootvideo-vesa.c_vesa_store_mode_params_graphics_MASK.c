#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lfb_depth; int /*<<< orphan*/  lfb_size; int /*<<< orphan*/  red_size; int /*<<< orphan*/  lfb_base; int /*<<< orphan*/  pages; int /*<<< orphan*/  lfb_height; int /*<<< orphan*/  lfb_width; int /*<<< orphan*/  lfb_linelength; int /*<<< orphan*/  vesa_attributes; int /*<<< orphan*/  orig_video_isVGA; } ;
struct TYPE_8__ {TYPE_1__ screen_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  total_memory; } ;
struct TYPE_6__ {int bpp; int /*<<< orphan*/  rmask; int /*<<< orphan*/  lfb_ptr; int /*<<< orphan*/  image_planes; int /*<<< orphan*/  v_res; int /*<<< orphan*/  h_res; int /*<<< orphan*/  logical_scan; int /*<<< orphan*/  mode_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_TYPE_VLFB ; 
 TYPE_4__ boot_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ vginfo ; 
 TYPE_2__ vminfo ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Tell the kernel we're in VESA graphics mode */
	boot_params.screen_info.orig_video_isVGA = VIDEO_TYPE_VLFB;

	/* Mode parameters */
	boot_params.screen_info.vesa_attributes = vminfo.mode_attr;
	boot_params.screen_info.lfb_linelength = vminfo.logical_scan;
	boot_params.screen_info.lfb_width = vminfo.h_res;
	boot_params.screen_info.lfb_height = vminfo.v_res;
	boot_params.screen_info.lfb_depth = vminfo.bpp;
	boot_params.screen_info.pages = vminfo.image_planes;
	boot_params.screen_info.lfb_base = vminfo.lfb_ptr;
	FUNC0(&boot_params.screen_info.red_size,
	       &vminfo.rmask, 8);

	/* General parameters */
	boot_params.screen_info.lfb_size = vginfo.total_memory;

	if (vminfo.bpp <= 8)
		FUNC1();

	FUNC2();
}