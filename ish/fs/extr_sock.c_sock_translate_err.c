
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct fd {int real_fd; } ;
typedef int socklen_t ;
typedef int addr ;


 scalar_t__ EINVAL ;
 int _ECONNRESET ;
 int _ENOTCONN ;
 scalar_t__ errno ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;

__attribute__((used)) static void sock_translate_err(struct fd *fd, int *err) {



    if (*err == _ENOTCONN) {
        struct sockaddr addr;
        socklen_t len = sizeof(addr);
        if (getpeername(fd->real_fd, &addr, &len) < 0 && errno == EINVAL) {
            *err = _ECONNRESET;
        }
    }
}
