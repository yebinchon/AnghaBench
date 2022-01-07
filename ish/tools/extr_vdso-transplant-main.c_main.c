
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int AT_FDCWD ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int SIGSTOP ;
 int exit (int) ;
 int fstat (int,struct stat*) ;
 int kill (int,int ) ;
 void* mmap (int *,size_t,int ,int ,int,int ) ;
 int open (char* const,int ) ;
 int perror (char*) ;
 int printf (char*,int) ;
 int start_tracee (int ,char* const,char* const*,char* const*) ;
 int transplant_vdso (int,void*,size_t) ;
 int trycall (int ,char*) ;

int main(int argc, char *const argv[]) {
    char *const envp[] = {((void*)0)};
    int pid = start_tracee(AT_FDCWD, argv[2], argv + 2, envp);

    int vdso_fd = trycall(open(argv[1], O_RDONLY), "open vdso");
    struct stat statbuf;
    trycall(fstat(vdso_fd, &statbuf), "stat vdso");
    size_t vdso_size = statbuf.st_size;
    void *vdso = mmap(((void*)0), statbuf.st_size, PROT_READ, MAP_PRIVATE, vdso_fd, 0);
    if (vdso == MAP_FAILED) {
        perror("mmap vdso"); exit(1);
    }
    transplant_vdso(pid, vdso, vdso_size);

    trycall(kill(pid, SIGSTOP), "pause process");
    printf("attach debugger to %d\n", pid);
    return 0;
}
