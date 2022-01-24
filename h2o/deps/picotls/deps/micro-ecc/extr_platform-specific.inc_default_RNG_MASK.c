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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 

__attribute__((used)) static int FUNC3(uint8_t *dest, unsigned size) {
    int fd = FUNC1("/dev/urandom", O_RDONLY | O_CLOEXEC);
    if (fd == -1) {
        fd = FUNC1("/dev/random", O_RDONLY | O_CLOEXEC);
        if (fd == -1) {
            return 0;
        }
    }
    
    char *ptr = (char *)dest;
    size_t left = size;
    while (left > 0) {
        ssize_t bytes_read = FUNC2(fd, ptr, left);
        if (bytes_read <= 0) { // read failed
            FUNC0(fd);
            return 0;
        }
        left -= bytes_read;
        ptr += bytes_read;
    }
    
    FUNC0(fd);
    return 1;
}