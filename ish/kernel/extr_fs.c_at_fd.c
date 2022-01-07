
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int dummy; } ;
typedef scalar_t__ fd_t ;


 scalar_t__ AT_FDCWD_ ;
 struct fd* AT_PWD ;
 struct fd* f_get (scalar_t__) ;

__attribute__((used)) static struct fd *at_fd(fd_t f) {
    if (f == AT_FDCWD_)
        return AT_PWD;
    return f_get(f);
}
