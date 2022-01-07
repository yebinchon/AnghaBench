
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die_errno (char*,char const*) ;
 scalar_t__ fsync (int) ;

void fsync_or_die(int fd, const char *msg)
{
 if (fsync(fd) < 0) {
  die_errno("fsync error on '%s'", msg);
 }
}
