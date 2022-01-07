
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_BSHELL ;
 int execl (int ,int ,char*,char const*,int *) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int printf (char*,char const*) ;
 int setsid () ;
 int wait (int ) ;

__attribute__((used)) static void start_application(const char *command) {
    printf("executing: %s\n", command);
    if (fork() == 0) {

        setsid();
        if (fork() == 0) {

            execl(_PATH_BSHELL, _PATH_BSHELL, "-c", command, ((void*)0));

        }
        exit(0);
    }
    wait(0);
}
