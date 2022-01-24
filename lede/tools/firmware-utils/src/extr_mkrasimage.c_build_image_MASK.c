#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* data; int size; } ;
struct TYPE_11__ {char* data; int size; scalar_t__ name; } ;
struct TYPE_10__ {int size; char* data; } ;

/* Variables and functions */
 int BOARD_HEADER_LEN ; 
 size_t HEADER_PARTITION_LENGTH ; 
 int KERNEL_HEADER_LEN ; 
 int ROOTFS_HEADER_LEN ; 
 int /*<<< orphan*/  board_name ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_2__) ; 
 char* FUNC4 (TYPE_3__,int /*<<< orphan*/ ) ; 
 TYPE_2__ kernel ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 TYPE_1__ out ; 
 TYPE_2__ rootfs ; 
 TYPE_3__ rootfs_out ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  version_name ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int FUNC11()
{
    char *rootfs_header = NULL;
    char *kernel_header = NULL;
    char *board_header = NULL;

    size_t ptr;

    /* Load files */
    if (kernel.name)
        FUNC6(&kernel);
    FUNC6(&rootfs);

    /*
     * Allocate memory and copy input rootfs for temporary output rootfs.
     * This is important as we have to generate the rootfs checksum over the
     * entire rootfs partition. As we might have to pad the partition to allow
     * for flashing via ZyXEL's Web-GUI, we prepare the rootfs partition for the
     * output image here (and also use it for calculating the rootfs checksum).
     *
     * The roofs padding has to be done with 0x00.
     */
    rootfs_out.data = FUNC0(rootfs_out.size, sizeof(char));
    FUNC7(rootfs_out.data, rootfs.data, rootfs.size);

    /* Prepare headers */
    rootfs_header = FUNC4(rootfs_out, version_name);
    if (kernel.name)
        kernel_header = FUNC3(kernel);
    board_header = FUNC2(kernel_header, rootfs_header, board_name);

    /* Prepare output file */
    out.size = HEADER_PARTITION_LENGTH + rootfs_out.size;
    if (kernel.name)
        out.size += kernel.size;
    out.data = FUNC5(out.size);
    FUNC8(out.data, 0xFF, out.size);

    /* Build output image */
    FUNC7(out.data, rootfs_header, ROOTFS_HEADER_LEN);
    FUNC7(out.data + ROOTFS_HEADER_LEN, board_header, BOARD_HEADER_LEN);
    if (kernel.name)
        FUNC7(out.data + ROOTFS_HEADER_LEN + BOARD_HEADER_LEN, kernel_header, KERNEL_HEADER_LEN);
    ptr = HEADER_PARTITION_LENGTH;
    FUNC7(out.data + ptr, rootfs_out.data, rootfs_out.size);
    ptr += rootfs_out.size;
    if (kernel.name)
        FUNC7(out.data + ptr, kernel.data, kernel.size);

    /* Write back output image */
    FUNC10(&out);

    /* Free allocated memory */
    if (kernel.name)
        FUNC9(&kernel);
    FUNC9(&rootfs);
    FUNC1(out.data);
    FUNC1(rootfs_out.data);

    FUNC1(rootfs_header);
    if (kernel.name)
        FUNC1(kernel_header);
    FUNC1(board_header);

    return 0;
}