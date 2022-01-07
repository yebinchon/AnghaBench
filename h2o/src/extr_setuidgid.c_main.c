
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; int pw_name; } ;


 int EX_CONFIG ;
 int EX_OSERR ;
 scalar_t__ errno ;
 int execvp (char*,char**) ;
 int fprintf (int ,char*,...) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ initgroups (int ,int ) ;
 int perror (char*) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setuid (int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;

int main(int argc, char **argv)
{
    struct passwd *user;

    if (argc < 3) {
        fprintf(stderr, "no command (usage: setuidgid user cmd args...)\n");
        return EX_CONFIG;
    }
    --argc;
    ++argv;

    errno = 0;
    if ((user = getpwnam(*argv)) == ((void*)0)) {
        if (errno == 0) {
            fprintf(stderr, "unknown user:%s\n", *argv);
            return EX_CONFIG;
        } else {
            perror("getpwnam");
            return EX_OSERR;
        }
    }
    --argc;
    ++argv;

    if (setgid(user->pw_gid) != 0) {
        perror("setgid failed");
        return EX_OSERR;
    }
    if (initgroups(user->pw_name, user->pw_gid) != 0) {
        perror("initgroups failed");
        return EX_OSERR;
    }
    if (setuid(user->pw_uid) != 0) {
        perror("setuid failed");
        return EX_OSERR;
    }

    execvp(*argv, argv);
    fprintf(stderr, "execvp failed to launch file:%s:%s\n", *argv, strerror(errno));
    return EX_OSERR;
}
