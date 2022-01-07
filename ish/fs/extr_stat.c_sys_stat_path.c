
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statbuf {int dummy; } ;
struct newstat64 {int dummy; } ;
struct fd {int dummy; } ;
typedef int path ;
typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,int ,char*,int ,int) ;
 int _EBADF ;
 int _EFAULT ;
 struct fd* at_fd (int ) ;
 int generic_statat (struct fd*,char*,struct statbuf*,int) ;
 struct newstat64 stat_convert_newstat64 (struct statbuf) ;
 scalar_t__ user_put (int ,struct newstat64) ;
 scalar_t__ user_read_string (int ,char*,int) ;

__attribute__((used)) static dword_t sys_stat_path(fd_t at_f, addr_t path_addr, addr_t statbuf_addr, bool follow_links) {
    int err;
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("stat(at=%d, path=\"%s\", statbuf=0x%x, follow_links=%d)", at_f, path, statbuf_addr, follow_links);
    struct fd *at = at_fd(at_f);
    if (at == ((void*)0))
        return _EBADF;
    struct statbuf stat;
    if ((err = generic_statat(at, path, &stat, follow_links)) < 0)
        return err;
    struct newstat64 newstat = stat_convert_newstat64(stat);
    if (user_put(statbuf_addr, newstat))
        return _EFAULT;
    return 0;
}
