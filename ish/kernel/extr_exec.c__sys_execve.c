
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int dword_t ;
typedef int addr_t ;


 int ARGV_MAX ;
 int MAX_PATH ;
 int STRACE (char*,...) ;
 int _EFAULT ;
 int _ENOMEM ;
 int free (char*) ;
 char* malloc (int ) ;
 scalar_t__ strlen (char const*) ;
 int sys_execve (char*,char*,char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;
 int user_read_string_array (int ,char*,int ) ;

dword_t _sys_execve(addr_t filename_addr, addr_t argv_addr, addr_t envp_addr) {
    char filename[MAX_PATH];
    if (user_read_string(filename_addr, filename, sizeof(filename)))
        return _EFAULT;

    int err = _ENOMEM;
    char *argv = malloc(ARGV_MAX);
    if (argv == ((void*)0))
        goto err_free_argv;
    err = user_read_string_array(argv_addr, argv, ARGV_MAX);

    if (err < 0)
        goto err_free_argv;
    char *envp = malloc(ARGV_MAX);
    if (envp == ((void*)0))
        goto err_free_envp;
    err = user_read_string_array(envp_addr, envp, ARGV_MAX);
    if (err < 0)
        goto err_free_envp;

    STRACE("execve(\"%s\", {", filename);
    const char *args = argv;
    while (*args != '\0') {
        STRACE("\"%s\", ", args);
        args += strlen(args) + 1;
    }
    args = envp;
    while (*args != '\0') {
        STRACE("\"%s\", ", args);
        args += strlen(args) + 1;
    }
    STRACE("})");

    return sys_execve(filename, argv, envp);

err_free_envp:
    free(envp);
err_free_argv:
    free(argv);
    return err;
}
