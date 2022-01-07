
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;

__attribute__((used)) static int null_read(int fd, char *c_out, void *unused)
{
 return -ENODEV;
}
