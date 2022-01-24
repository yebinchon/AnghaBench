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
struct file_info {int /*<<< orphan*/  size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  KERNEL_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int*,int) ; 
 unsigned int FUNC5 (unsigned char const*,int /*<<< orphan*/ ) ; 

char *FUNC6(struct file_info kernel)
{
    unsigned int chksm, size;
    char *kernel_header;
    size_t ptr = 0;

    kernel_header = FUNC3(KERNEL_HEADER_LEN);
    if (!kernel_header) {
        FUNC0("Couldn't allocate memory for kernel header!");
        FUNC1(EXIT_FAILURE);
    }

    chksm = FUNC5((const unsigned char *)kernel.data, kernel.size);
    size = FUNC2(kernel.size);

    /* 4 bytes:  checksum of the kernel image */
    FUNC4(kernel_header + ptr, &chksm, 4);
    ptr += 4;

    /* 4 bytes:  length of the contained kernel image file (big endian) */
    FUNC4(kernel_header + ptr, &size, 4);

    return kernel_header;
}