#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fd*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (struct fd*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  _EFAULT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fd*) ; 
 struct fd* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

dword_t FUNC6(addr_t path_addr) {
    char path[MAX_PATH];
    if (FUNC5(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC2("chdir(\"%s\")", path);

    struct fd *dir = FUNC4(path);
    if (FUNC0(dir))
        return FUNC1(dir);
    FUNC3(current->fs, dir);
    return 0;
}