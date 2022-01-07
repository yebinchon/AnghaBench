
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELOG (char*,char const*) ;
 char* getenv (char*) ;
 int parse_long (char const*,long*,int) ;

__attribute__((used)) static int parse_restart_fd(void) {
    const char *restart_fd = getenv("_I3_RESTART_FD");
    if (restart_fd == ((void*)0)) {
        return -1;
    }

    long int fd = -1;
    if (!parse_long(restart_fd, &fd, 10)) {
        ELOG("Malformed _I3_RESTART_FD \"%s\"\n", restart_fd);
        return -1;
    }
    return fd;
}
