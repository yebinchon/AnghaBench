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
struct linux_dirent64_ {int dummy; } ;
struct fd {TYPE_1__* ops; int /*<<< orphan*/  type; } ;
struct dir_entry {char* name; int /*<<< orphan*/  inode; } ;
typedef  void* off_t_ ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  size_t dword_t ;
typedef  size_t addr_t ;
struct TYPE_2__ {int (* readdir ) (struct fd*,struct dir_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int _EBADF ; 
 int _EFAULT ; 
 int _ENOTDIR ; 
 struct fd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fd*,long) ; 
 void* FUNC4 (struct fd*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (struct fd*,struct dir_entry*) ; 
 scalar_t__ FUNC7 (size_t,char*,size_t) ; 

int_t FUNC8(fd_t f, addr_t dirents, dword_t count,
        size_t (*fill_dirent)(void *, ino_t, off_t_, const char *, int)) {
    FUNC0("getdents(%d, %#x, %#x)", f, dirents, count);
    struct fd *fd = FUNC2(f);
    if (fd == NULL)
        return _EBADF;
    if (!FUNC1(fd->type) || fd->ops->readdir == NULL)
        return _ENOTDIR;

    dword_t orig_count = count;

    long ptr;
    int err;
    int printed = 0;
    while (true) {
        ptr = FUNC4(fd);
        struct dir_entry entry;
        err = fd->ops->readdir(fd, &entry);
        if (err < 0)
            return err;
        if (err == 0)
            break;

        size_t max_reclen = sizeof(struct linux_dirent64_) + FUNC5(entry.name) + 4;
        char dirent_data[max_reclen];
        ino_t inode = entry.inode;
        off_t_ offset = FUNC4(fd);
        const char *name = entry.name;
        int type = 0;
        size_t reclen = fill_dirent(dirent_data, inode, offset, name, type);
        if (printed < 20) {
            FUNC0(" {inode=%d, offset=%d, name=%s, type=%d, reclen=%d}",
                    inode, offset, name, type, reclen);
            printed++;
        }

        if (reclen > count)
            break;
        if (FUNC7(dirents, dirent_data, reclen))
            return _EFAULT;
        dirents += reclen;
        count -= reclen;
    }

    FUNC3(fd, ptr);
    return orig_count - count;
}