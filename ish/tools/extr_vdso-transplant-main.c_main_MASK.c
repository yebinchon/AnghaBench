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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char* const,char* const*,char* const*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 

int FUNC10(int argc, char *const argv[]) {
    char *const envp[] = {NULL};
    int pid = FUNC7(AT_FDCWD, argv[2], argv + 2, envp);

    int vdso_fd = FUNC9(FUNC4(argv[1], O_RDONLY), "open vdso");
    struct stat statbuf;
    FUNC9(FUNC1(vdso_fd, &statbuf), "stat vdso");
    size_t vdso_size = statbuf.st_size;
    void *vdso = FUNC3(NULL, statbuf.st_size, PROT_READ, MAP_PRIVATE, vdso_fd, 0);
    if (vdso == MAP_FAILED) {
        FUNC5("mmap vdso"); FUNC0(1);
    }
    FUNC8(pid, vdso, vdso_size);

    FUNC9(FUNC2(pid, SIGSTOP), "pause process");
    FUNC6("attach debugger to %d\n", pid);
    return 0;
}