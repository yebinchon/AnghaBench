
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 int assert_d_ne (int,int,char*) ;
 int open (char*,int ) ;

__attribute__((used)) static int
prof_dump_open_intercept(bool propagate_err, const char *filename) {
 int fd;

 fd = open("/dev/null", O_WRONLY);
 assert_d_ne(fd, -1, "Unexpected open() failure");

 return fd;
}
