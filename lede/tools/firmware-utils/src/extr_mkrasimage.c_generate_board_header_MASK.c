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

/* Variables and functions */
 int /*<<< orphan*/  BOARD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

char *FUNC7(char *kernel_hdr, char *rootfs_hdr, char *boardname)
{
    unsigned int board_checksum;
    char *board_hdr;

    board_hdr = FUNC3(BOARD_HEADER_LEN);
    if (!board_hdr) {
        FUNC0("Couldn't allocate memory for board header!");
        FUNC1(EXIT_FAILURE);
    }
    FUNC5(board_hdr, 0xff, BOARD_HEADER_LEN);

    /* 4 bytes:  checksum over the header partition (big endian) */
    board_checksum = FUNC2(kernel_hdr, rootfs_hdr, boardname);
    FUNC4(board_hdr, &board_checksum, 4);

    /* 32 bytes:  Model (e.g. "NBG6617", NUL termiated, 0xff padded) */
    FUNC4(board_hdr + 4, boardname, FUNC6(boardname));
    board_hdr[4 + FUNC6(boardname)] = 0x0;

    return board_hdr;
}