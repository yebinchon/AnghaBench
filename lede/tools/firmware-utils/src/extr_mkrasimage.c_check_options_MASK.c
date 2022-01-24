#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  board_name ; 
 TYPE_2__ out ; 
 TYPE_1__ rootfs ; 
 scalar_t__ rootfs_size ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version_name ; 

int FUNC2()
{
    if (!rootfs.name) {
        FUNC0("No rootfs filename supplied");
        return -2;
    }

    if (!out.name) {
        FUNC0("No output filename supplied");
        return -3;
    }

    if (!board_name) {
        FUNC0("No board-name supplied");
        return -4;
    }

    if (!version_name) {
        FUNC0("No version supplied");
        return -5;
    }

    if (rootfs_size <= 0) {
        FUNC0("Invalid rootfs size supplied");
        return -6;
    }

    if (FUNC1(board_name) > 31) {
        FUNC0("Board name is to long");
        return -7;
    }
    return 0;
}