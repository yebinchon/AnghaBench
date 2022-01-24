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
typedef  int /*<<< orphan*/  template ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  F_ADD_SEALS ; 
 int F_SEAL_SEAL ; 
 int F_SEAL_SHRINK ; 
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SHM_ANON ; 
 char* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(off_t size)
{
    static const char template[] = "/glfw-shared-XXXXXX";
    const char* path;
    char* name;
    int fd;
    int ret;

#ifdef HAVE_MEMFD_CREATE
    fd = memfd_create("glfw-shared", MFD_CLOEXEC | MFD_ALLOW_SEALING);
    if (fd >= 0)
    {
        // We can add this seal before calling posix_fallocate(), as the file
        // is currently zero-sized anyway.
        //
        // There is also no need to check for the return value, we couldn’t do
        // anything with it anyway.
        fcntl(fd, F_ADD_SEALS, F_SEAL_SHRINK | F_SEAL_SEAL);
    }
    else
#elif defined(SHM_ANON)
    fd = shm_open(SHM_ANON, O_RDWR | O_CLOEXEC, 0600);
    if (fd < 0)
#endif
    {
        path = FUNC6("XDG_RUNTIME_DIR");
        if (!path)
        {
            errno = ENOENT;
            return -1;
        }

        name = FUNC0(FUNC12(path) + sizeof(template), 1);
        FUNC11(name, path);
        FUNC10(name, template);

        fd = FUNC2(name);
        FUNC4(name);
        if (fd < 0)
            return -1;
    }

#if defined(SHM_ANON)
    // posix_fallocate does not work on SHM descriptors
    ret = ftruncate(fd, size);
#else
    ret = FUNC8(fd, 0, size);
#endif
    if (ret != 0)
    {
        FUNC1(fd);
        errno = ret;
        return -1;
    }
    return fd;
}