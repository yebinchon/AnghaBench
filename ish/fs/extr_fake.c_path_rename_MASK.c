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
struct TYPE_2__ {int /*<<< orphan*/  path_rename; } ;
struct mount {TYPE_1__ stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,size_t) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(struct mount *mount, const char *src, const char *dst) {
    // update or replace paths set path = change_prefix(path, ? [len(src)], ? [dst])
    //  where (path >= ? [src plus /] and path < [src plus 0]) or path = ? [src]
    // arguments:
    // 1. length of src
    // 2. dst
    // 3. src plus /
    // 4. src plus 0
    // 5. src
    size_t src_len = FUNC5(src);
    FUNC4(mount->stmt.path_rename, 1, src_len);
    FUNC0(mount->stmt.path_rename, 2, dst);
    char src_extra[src_len + 1];
    FUNC2(src_extra, src, src_len);
    src_extra[src_len] = '/';
    FUNC3(mount->stmt.path_rename, 3, src_extra, src_len + 1, SQLITE_TRANSIENT);
    src_extra[src_len] = '0';
    FUNC3(mount->stmt.path_rename, 4, src_extra, src_len + 1, SQLITE_TRANSIENT);
    FUNC3(mount->stmt.path_rename, 5, src_extra, src_len, SQLITE_TRANSIENT);
    FUNC1(mount, mount->stmt.path_rename);
}