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
struct mount {int root_fd; } ;
struct attr {int type; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  attr_gid 131 
#define  attr_mode 130 
#define  attr_size 129 
#define  attr_uid 128 
 int FUNC1 () ; 
 int FUNC2 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (struct mount*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mount *mount, const char *path, struct attr attr) {
    path = FUNC4(path);
    int root = mount->root_fd;
    int err;
    switch (attr.type) {
        case attr_uid:
            err = FUNC3(root, path, attr.uid, -1, 0);
            break;
        case attr_gid:
            err = FUNC3(root, path, attr.gid, -1, 0);
            break;
        case attr_mode:
            err = FUNC2(root, path, attr.mode, 0);
            break;
        case attr_size:
            return FUNC5(mount, path, attr.size);
        default:
            FUNC0("other attrs");
    }
    if (err < 0)
        return FUNC1();
    return err;
}