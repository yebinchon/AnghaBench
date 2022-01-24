#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct fw_header {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/ * layout_id; int /*<<< orphan*/  hw_id; } ;
struct TYPE_9__ {int file_size; int /*<<< orphan*/ * file_name; } ;
struct TYPE_8__ {int fw_max_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_5__* board ; 
 int /*<<< orphan*/ * board_id ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ firmware_info ; 
 int firmware_len ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  hw_id ; 
 scalar_t__ inspect ; 
 TYPE_1__* layout ; 
 int /*<<< orphan*/ * layout_id ; 
 int /*<<< orphan*/ * ofname ; 
 int /*<<< orphan*/ * opt_hw_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	if (firmware_info.file_name == NULL) {
		FUNC0("no firmware image specified");
		return -1;
	}

	ret = FUNC4(&firmware_info);
	if (ret)
		return ret;

	if (inspect)
		return 0;

	if (board_id == NULL && opt_hw_id == NULL) {
		FUNC0("either board or hardware id must be specified");
		return -1;
	}

	if (board_id) {
		board = FUNC1(board_id);
		if (board == NULL) {
			FUNC0("unknown/unsupported board id \"%s\"", board_id);
			return -1;
		}
		if (layout_id == NULL) {
			layout_id = board->layout_id;
		}
		hw_id = board->hw_id;
	} else {
		hw_id = FUNC5(opt_hw_id, NULL, 0);
		board = FUNC2(hw_id);
		if (layout_id == NULL) {
			layout_id = board->layout_id;
		}
	}

	layout = FUNC3(layout_id);
	if (layout == NULL) {
		FUNC0("unknown flash layout \"%s\"", layout_id);
		return -1;
	}

	firmware_len = firmware_info.file_size;

	if (firmware_info.file_size >
		layout->fw_max_len - sizeof (struct fw_header)) {
		FUNC0("firmware image is too big");
		return -1;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		return -1;
	}
	return 0;
}