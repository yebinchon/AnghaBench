
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu; } ;


 int cpu_run (int *) ;
 TYPE_1__* current ;
 int devptsfs ;
 int do_mount (int *,char*,char*,int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getenv (char*) ;
 int procfs ;
 int stderr ;
 int strcpy (char*,scalar_t__) ;
 char* strerror (int) ;
 scalar_t__ strlen (char*) ;
 int xX_main_Xx (int,char* const*,char*) ;

int main(int argc, char *const argv[]) {
    char envp[100] = {0};
    if (getenv("TERM"))
        strcpy(envp, getenv("TERM") - strlen("TERM") - 1);
    int err = xX_main_Xx(argc, argv, envp);
    if (err < 0) {
        fprintf(stderr, "%s\n", strerror(-err));
        return err;
    }
    do_mount(&procfs, "proc", "/proc", 0);
    do_mount(&devptsfs, "devpts", "/dev/pts", 0);
    cpu_run(&current->cpu);
}
