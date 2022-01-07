
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; int st_mode; } ;
typedef scalar_t__ devmajor_t ;


 scalar_t__ NODEVMAJOR ;
 int S_IFCHR ;
 int S_ISCHR (int ) ;
 int TIOCGPTN ;
 int TIOCPTYGNAME ;
 int abort () ;
 scalar_t__ fstat (int const,struct stat*) ;
 scalar_t__ getdevmajor (char*,int ) ;
 scalar_t__ ioctl (int const,int ,...) ;
 scalar_t__ major (int ) ;
 int * ptsname (int const) ;

__attribute__((used)) static int uv__tty_is_slave(const int fd) {
  int result;

  int dummy;

  result = ioctl(fd, TIOCGPTN, &dummy) != 0;
  return result;
}
