
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;


 int _ENOEXEC ;
 int elf_exec (struct fd*,char const*,char const*,char const*) ;

__attribute__((used)) static int format_exec(struct fd *fd, const char *file, const char *argv, const char *envp) {
    int err = elf_exec(fd, file, argv, envp);
    if (err != _ENOEXEC)
        return err;

    return _ENOEXEC;
}
