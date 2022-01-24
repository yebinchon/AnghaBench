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
 scalar_t__ FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(void * const buf_, size_t size)
{
    unsigned char *buf = (unsigned char *) buf_;
    size_t         chunk_size = 256U;

    do {
        if (size < chunk_size) {
            chunk_size = size;
            FUNC1(chunk_size > (size_t) 0U);
        }
        if (FUNC0(buf, chunk_size) != 0) {
            return -1;
        }
        size -= chunk_size;
        buf += chunk_size;
    } while (size > (size_t) 0U);

    return 0;
}