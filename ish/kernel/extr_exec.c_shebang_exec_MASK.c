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
struct fd {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {int (* read ) (struct fd*,char*,int) ;scalar_t__ (* lseek ) (struct fd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fd*) ; 
 int /*<<< orphan*/  O_RDONLY_ ; 
 int FUNC1 (struct fd*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _E2BIG ; 
 int _EIO ; 
 int _ENOEXEC ; 
 int /*<<< orphan*/  FUNC2 (struct fd*) ; 
 int FUNC3 (struct fd*,char*,char*,char const*) ; 
 struct fd* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (struct fd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct fd*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct fd *fd, const char *file, const char *argv, const char *envp) {
    // read the first 128 bytes to get the shebang line out of
    if (fd->ops->lseek(fd, 0, SEEK_SET))
        return _EIO;
    char header[128];
    int size = fd->ops->read(fd, header, sizeof(header) - 1);
    if (size < 0)
        return _EIO;
    header[size] = '\0';

    // only look at the first line
    char *newline = FUNC6(header, '\n');
    if (newline == NULL)
        return _ENOEXEC;
    *newline = '\0';

    // format: #![spaces]interpreter[spaces]argument[spaces]
    char *p = header;
    if (p[0] != '#' || p[1] != '!')
        return _ENOEXEC;
    p += 2;
    while (*p == ' ')
        p++;
    if (*p == '\0')
        return _ENOEXEC;

    char *interpreter = p;
    while (*p != ' ' && *p != '\0')
        p++;
    if (*p != '\0') {
        *p++ = '\0';
        while (*p == ' ')
            p++;
    }

    char *argument = p;
    // strip trailing whitespace
    p = FUNC6(p, '\0') - 1;
    while (*p == ' ')
        *p-- = '\0';
    if (*argument == '\0')
        argument = NULL;

    const char *argv_rest = argv + FUNC9(argv) + 1;
    size_t args_size = FUNC8(argv_rest);
    size_t extra_args_size = FUNC9(interpreter) + 1 + FUNC9(file) + 1;
    if (argument)
        extra_args_size += FUNC9(argument) + 1;
    if (args_size + extra_args_size >= 4096)
        return _E2BIG;

    char real_argv[4096];
    size_t n = 0;
    FUNC7(real_argv, interpreter);
    n += FUNC9(interpreter) + 1;
    if (argument) {
        FUNC7(real_argv + n, argument);
        n += FUNC9(argument) + 1;
    }
    FUNC7(real_argv + n, file);
    n += FUNC9(file) + 1;
    FUNC5(real_argv + n, argv_rest, args_size);

    struct fd *interpreter_fd = FUNC4(interpreter, O_RDONLY_, 0);
    if (FUNC0(interpreter_fd))
        return FUNC1(interpreter_fd);
    int err = FUNC3(interpreter_fd, interpreter, real_argv, envp);
    FUNC2(interpreter_fd);
    return err;
}