
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die_errno (char*) ;
 int dup (int) ;

int xdup(int fd)
{
 int ret = dup(fd);
 if (ret < 0)
  die_errno("dup failed");
 return ret;
}
