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
struct TYPE_2__ {int /*<<< orphan*/  path_link; } ;
struct mount {TYPE_1__ stmt; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (struct mount*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mount *mount, const char *src, const char *dst) {
    ino_t inode = FUNC3(mount, src);
    if (inode == 0)
        FUNC2("fakefs link(%s, %s): nonexistent src path", src, dst);
    // insert or replace into paths (path, inode) values (?, ?)
    FUNC0(mount->stmt.path_link, 1, dst);
    FUNC4(mount->stmt.path_link, 2, inode);
    FUNC1(mount, mount->stmt.path_link);
}