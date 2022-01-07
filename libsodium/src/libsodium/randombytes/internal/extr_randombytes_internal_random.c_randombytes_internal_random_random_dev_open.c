
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EINTR ;
 scalar_t__ EIO ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_RDONLY ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISNAM (int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int fcntl (int,int ,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 scalar_t__ randombytes_block_on_dev_random () ;

__attribute__((used)) static int
randombytes_internal_random_random_dev_open(void)
{
    struct stat st;
    static const char *devices[] = {

        "/dev/urandom",

        "/dev/random", ((void*)0)
    };
    const char **device = devices;
    int fd;






    do {
        fd = open(*device, O_RDONLY);
        if (fd != -1) {
            if (fstat(fd, &st) == 0 && (S_ISNAM(st.st_mode) || S_ISCHR(st.st_mode))) {



                return fd;
            }
            (void) close(fd);
        } else if (errno == EINTR) {
            continue;
        }
        device++;
    } while (*device != ((void*)0));

    errno = EIO;
    return -1;
}
