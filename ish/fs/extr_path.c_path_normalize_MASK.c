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
struct fd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct fd* pwd; struct fd* root; } ;

/* Variables and functions */
 struct fd* AT_PWD ; 
 int MAX_PATH ; 
 int _ENOENT ; 
 int FUNC0 (char*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int FUNC2 (struct fd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct fd *at, const char *path, char *out, int flags) {
    FUNC1(at != NULL);
    if (FUNC5(path, "") == 0)
        return _ENOENT;

    // start with root or cwd, depending on whether it starts with a slash
    FUNC3(&current->fs->lock);
    if (path[0] == '/')
        at = current->fs->root;
    else if (at == AT_PWD)
        at = current->fs->pwd;
    FUNC6(&current->fs->lock);
    char at_path[MAX_PATH];
    if (at != NULL) {
        int err = FUNC2(at, at_path);
        if (err < 0)
            return err;
        FUNC1(FUNC4(at_path));
    }

    return FUNC0(at != NULL ? at_path : NULL, path, out, flags, 0);
}