
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int raise (int) ;
 int shm_unlink (char*) ;
 char* shmlogname ;

__attribute__((used)) static void handle_core_signal(int sig, siginfo_t *info, void *data) {
    if (*shmlogname != '\0') {
        shm_unlink(shmlogname);
    }
    raise(sig);
}
