
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int pw_name; } ;
typedef int buf ;


 scalar_t__ errno ;
 scalar_t__ getpwnam_r (char const*,struct passwd*,char*,int,struct passwd**) ;
 int h2o_error_printf (char*,...) ;
 int h2o_perror (char*) ;
 scalar_t__ initgroups (int ,scalar_t__) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setuid (scalar_t__) ;
 int strerror (scalar_t__) ;

int h2o_setuidgid(const char *user)
{
    struct passwd pwbuf, *pw;
    char buf[65536];

    errno = 0;
    if (getpwnam_r(user, &pwbuf, buf, sizeof(buf), &pw) != 0) {
        h2o_perror("getpwnam_r");
        return -1;
    }
    if (pw == ((void*)0)) {
        h2o_error_printf("unknown user:%s\n", user);
        return -1;
    }
    if (setgid(pw->pw_gid) != 0) {
        h2o_error_printf("setgid(%d) failed:%s\n", (int)pw->pw_gid, strerror(errno));
        return -1;
    }
    if (initgroups(pw->pw_name, pw->pw_gid) != 0) {
        h2o_error_printf("initgroups(%s, %d) failed:%s\n", pw->pw_name, (int)pw->pw_gid, strerror(errno));
        return -1;
    }
    if (setuid(pw->pw_uid) != 0) {
        h2o_error_printf("setuid(%d) failed:%s\n", (int)pw->pw_uid, strerror(errno));
        return -1;
    }

    return 0;
}
