
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpgid (int ) ;
 int tcgetpgrp (int) ;

__attribute__((used)) static int is_foreground_fd(int fd)
{
 int tpgrp = tcgetpgrp(fd);
 return tpgrp < 0 || tpgrp == getpgid(0);
}
