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
struct statbuf {int dummy; } ;
struct newstat64 {int dummy; } ;
struct fd {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int _EBADF ; 
 int _EFAULT ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fd*,char*,struct statbuf*,int) ; 
 struct newstat64 FUNC3 (struct statbuf) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct newstat64) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static dword_t FUNC6(fd_t at_f, addr_t path_addr, addr_t statbuf_addr, bool follow_links) {
    int err;
    char path[MAX_PATH];
    if (FUNC5(path_addr, path, sizeof(path)))
        return _EFAULT;
    FUNC0("stat(at=%d, path=\"%s\", statbuf=0x%x, follow_links=%d)", at_f, path, statbuf_addr, follow_links);
    struct fd *at = FUNC1(at_f);
    if (at == NULL)
        return _EBADF;
    struct statbuf stat;
    if ((err = FUNC2(at, path, &stat, follow_links)) < 0)
        return err;
    struct newstat64 newstat = FUNC3(stat);
    if (FUNC4(statbuf_addr, newstat))
        return _EFAULT;
    return 0;
}