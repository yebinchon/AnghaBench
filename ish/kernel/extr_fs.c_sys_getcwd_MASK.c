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
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct fd* pwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int _EFAULT ; 
 int _ENOMEM ; 
 int _ERANGE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct fd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC9(addr_t buf_addr, dword_t size) {
    FUNC0("getcwd(%#x, %#x)", buf_addr, size);
    FUNC3(&current->fs->lock);
    struct fd *wd = current->fs->pwd;
    char pwd[MAX_PATH + 1];
    int err = FUNC2(wd, pwd);
    FUNC7(&current->fs->lock);
    if (err < 0)
        return err;

    if (FUNC6(pwd) + 1 > size)
        return _ERANGE;
    size = FUNC6(pwd) + 1;
    char *buf = FUNC4(size);
    if (buf == NULL)
        return _ENOMEM;
    FUNC5(buf, pwd);
    FUNC0(" \"%.*s\"", size, buf);
    dword_t res = size;
    if (FUNC8(buf_addr, buf, size))
        res = _EFAULT;
    FUNC1(buf);
    return res;
}