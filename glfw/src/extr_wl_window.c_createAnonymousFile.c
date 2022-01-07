
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
typedef int off_t ;


 int ENOENT ;
 int F_ADD_SEALS ;
 int F_SEAL_SEAL ;
 int F_SEAL_SHRINK ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int SHM_ANON ;
 char* calloc (scalar_t__,int) ;
 int close (int) ;
 int createTmpfileCloexec (char*) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int free (char*) ;
 int ftruncate (int,int ) ;
 char* getenv (char*) ;
 int memfd_create (char*,int) ;
 int posix_fallocate (int,int ,int ) ;
 int shm_open (int ,int,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int createAnonymousFile(off_t size)
{
    static const char template[] = "/glfw-shared-XXXXXX";
    const char* path;
    char* name;
    int fd;
    int ret;
    {
        path = getenv("XDG_RUNTIME_DIR");
        if (!path)
        {
            errno = ENOENT;
            return -1;
        }

        name = calloc(strlen(path) + sizeof(template), 1);
        strcpy(name, path);
        strcat(name, template);

        fd = createTmpfileCloexec(name);
        free(name);
        if (fd < 0)
            return -1;
    }





    ret = posix_fallocate(fd, 0, size);

    if (ret != 0)
    {
        close(fd);
        errno = ret;
        return -1;
    }
    return fd;
}
