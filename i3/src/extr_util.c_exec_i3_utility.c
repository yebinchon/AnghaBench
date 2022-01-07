
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int _exit (int) ;
 char* dirname (char*) ;
 int execvp (char*,char**) ;
 int readlink (char*,char*,int) ;
 int sasprintf (char**,char*,char*,char*) ;
 char* sstrdup (int ) ;
 int * start_argv ;
 int warn (char*,...) ;

void exec_i3_utility(char *name, char *argv[]) {

    char *migratepath = name;
    argv[0] = migratepath;
    execvp(migratepath, argv);




    char *pathbuf = sstrdup(start_argv[0]);
    char *dir = dirname(pathbuf);
    sasprintf(&migratepath, "%s/%s", dir, name);
    argv[0] = migratepath;
    execvp(migratepath, argv);



    char buffer[BUFSIZ];
    if (readlink("/proc/self/exe", buffer, BUFSIZ) == -1) {
        warn("could not read /proc/self/exe");
        _exit(1);
    }
    dir = dirname(buffer);
    sasprintf(&migratepath, "%s/%s", dir, name);
    argv[0] = migratepath;
    execvp(migratepath, argv);


    warn("Could not start %s", name);
    _exit(2);
}
