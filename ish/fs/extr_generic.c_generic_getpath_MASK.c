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
struct fd {TYPE_2__* mount; } ;
struct TYPE_4__ {char* point; TYPE_1__* fs; } ;
struct TYPE_3__ {int (* getpath ) (struct fd*,char*) ;} ;

/* Variables and functions */
 scalar_t__ MAX_PATH ; 
 int _ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (struct fd*,char*) ; 

int FUNC5(struct fd *fd, char *buf) {
    int err = fd->mount->fs->getpath(fd, buf);
    if (err < 0)
        return err;
    if (FUNC2(buf) + FUNC2(fd->mount->point) >= MAX_PATH)
        return _ENAMETOOLONG;
    FUNC0(buf + FUNC2(fd->mount->point), buf, FUNC2(buf) + 1);
    FUNC3(buf, fd->mount->point, FUNC2(fd->mount->point));
    if (buf[0] == '\0')
        FUNC1(buf, "/");
    return 0;
}