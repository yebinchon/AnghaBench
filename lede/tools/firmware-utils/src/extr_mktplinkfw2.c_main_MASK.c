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
struct fw_header {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {void* file_name; } ;
struct TYPE_6__ {void* file_name; } ;
struct TYPE_5__ {void* file_name; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FLAG_LE_KERNEL_LA_EP ; 
 int add_jffs2_eof ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  combined ; 
 TYPE_4__ custom_board ; 
 int extract ; 
 void* fw_ver ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  hdr_ver ; 
 int FUNC5 () ; 
 TYPE_3__ inspect_info ; 
 int /*<<< orphan*/  kernel_ep ; 
 TYPE_2__ kernel_info ; 
 int /*<<< orphan*/  kernel_la ; 
 void* layout_id ; 
 void* ofname ; 
 void* opt_hw_id ; 
 void* opt_hw_rev ; 
 void* opt_hw_ver_add ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  rootfs_align ; 
 TYPE_1__ rootfs_info ; 
 int /*<<< orphan*/  rootfs_ofs ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int /*<<< orphan*/ *) ; 
 int strip_padding ; 
 void* sver ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* vendor ; 
 void* version ; 

int FUNC8(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC1(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC4(argc, argv, "a:H:E:F:L:V:N:W:w:ci:k:r:R:o:xhsjv:y:T:e");
		if (c == -1)
			break;

		switch (c) {
		case 'a':
			FUNC6(optarg, "0x%x", &rootfs_align);
			break;
		case 'H':
			opt_hw_id = optarg;
			break;
		case 'E':
			FUNC6(optarg, "0x%x", &kernel_ep);
			break;
		case 'F':
			layout_id = optarg;
			break;
		case 'W':
			opt_hw_rev = optarg;
			break;
		case 'w':
			opt_hw_ver_add = optarg;
			break;
		case 'L':
			FUNC6(optarg, "0x%x", &kernel_la);
			break;
		case 'V':
			version = optarg;
			break;
		case 'v':
			fw_ver = optarg;
			break;
		case 'y':
			sver = optarg;
			break;
		case 'N':
			vendor = optarg;
			break;
		case 'c':
			combined++;
			break;
		case 'k':
			kernel_info.file_name = optarg;
			break;
		case 'r':
			rootfs_info.file_name = optarg;
			break;
		case 'R':
			FUNC6(optarg, "0x%x", &rootfs_ofs);
			break;
		case 'o':
			ofname = optarg;
			break;
		case 's':
			strip_padding = 1;
			break;
		case 'i':
			inspect_info.file_name = optarg;
			break;
		case 'j':
			add_jffs2_eof = 1;
			break;
		case 'x':
			extract = 1;
			break;
		case 'T':
			hdr_ver = FUNC0(optarg);
			break;
		case 'e':
			custom_board.flags = FLAG_LE_KERNEL_LA_EP;
			break;
		case 'h':
			FUNC7(EXIT_SUCCESS);
			break;
		default:
			FUNC7(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC3();
	if (ret)
		goto out;

	if (!inspect_info.file_name)
		ret = FUNC2(sizeof(struct fw_header));
	else
		ret = FUNC5();

 out:
	return ret;
}