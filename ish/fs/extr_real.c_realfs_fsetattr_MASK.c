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
struct fd {int real_fd; } ;
struct attr {int type; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
#define  attr_gid 131 
#define  attr_mode 130 
#define  attr_size 129 
#define  attr_uid 128 
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fd *fd, struct attr attr) {
    int real_fd = fd->real_fd;
    int err;
    switch (attr.type) {
        case attr_uid:
            err = FUNC2(real_fd, attr.uid, -1);
            break;
        case attr_gid:
            err = FUNC2(real_fd, attr.gid, -1);
            break;
        case attr_mode:
            err = FUNC1(real_fd, attr.mode);
            break;
        case attr_size:
            err = FUNC3(real_fd, attr.size);
            break;
    }
    if (err < 0)
        return FUNC0();
    return err;
}