
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ execv (char*,char**) ;
 int fork () ;
 int perror (char*) ;
 int waitpid (int,int *,int ) ;

int main(int argc, char *argv[]) {
    int pid = fork();
    if (pid < 0) {
        perror("fork");
        abort();
    }
    if (pid == 0) {

        if (execv(argv[1], argv + 1) < 0) {
            perror("exec");
            abort();
        }
    } else {

        if (waitpid(pid, ((void*)0), 0) != pid) {
            perror("wait");
            abort();
        }
    }
}
