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
struct TYPE_4__ {char* data; size_t size; } ;
struct TYPE_3__ {TYPE_2__ data; } ;
struct fd {size_t offset; TYPE_1__ proc; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,size_t) ; 
 int FUNC2 (struct fd*) ; 

__attribute__((used)) static ssize_t FUNC3(struct fd *fd, void *buf, size_t bufsize) {
    int err = FUNC2(fd);
    if (err < 0)
        return err;

    const char *data = fd->proc.data.data;
    FUNC0(data != NULL);

    size_t remaining = fd->proc.data.size - fd->offset;
    if ((size_t) fd->offset > fd->proc.data.size)
        remaining = 0;
    size_t n = bufsize;
    if (n > remaining)
        n = remaining;

    FUNC1(buf, data + fd->offset, n);
    fd->offset += n;
    return n;
}