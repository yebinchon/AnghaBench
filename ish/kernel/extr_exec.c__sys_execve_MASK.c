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
typedef  int /*<<< orphan*/  filename ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARGV_MAX ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int _EFAULT ; 
 int _ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

dword_t FUNC7(addr_t filename_addr, addr_t argv_addr, addr_t envp_addr) {
    char filename[MAX_PATH];
    if (FUNC5(filename_addr, filename, sizeof(filename)))
        return _EFAULT;

    int err = _ENOMEM;
    char *argv = FUNC2(ARGV_MAX);
    if (argv == NULL)
        goto err_free_argv;
    err = FUNC6(argv_addr, argv, ARGV_MAX);

    if (err < 0)
        goto err_free_argv;
    char *envp = FUNC2(ARGV_MAX);
    if (envp == NULL)
        goto err_free_envp;
    err = FUNC6(envp_addr, envp, ARGV_MAX);
    if (err < 0)
        goto err_free_envp;

    FUNC0("execve(\"%s\", {", filename);
    const char *args = argv;
    while (*args != '\0') {
        FUNC0("\"%s\", ", args);
        args += FUNC3(args) + 1;
    }
    args = envp;
    while (*args != '\0') {
        FUNC0("\"%s\", ", args);
        args += FUNC3(args) + 1;
    }
    FUNC0("})");

    return FUNC4(filename, argv, envp);

err_free_envp:
    FUNC1(envp);
err_free_argv:
    FUNC1(argv);
    return err;
}