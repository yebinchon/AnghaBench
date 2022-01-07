
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int dup2 (int,int) ;
 scalar_t__ logname ;
 int open (scalar_t__,int,int) ;

__attribute__((used)) static void open_log (void) {
  int fd;
  if (logname && (fd = open (logname, O_WRONLY|O_APPEND|O_CREAT, 0640)) != -1) {
    dup2 (fd, 2);
    if (fd > 2) {
      close (fd);
    }
  }
}
