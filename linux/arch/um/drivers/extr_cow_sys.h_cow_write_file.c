
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_write_file (int,void*,int) ;

__attribute__((used)) static inline int cow_write_file(int fd, void *buf, int size)
{
 return os_write_file(fd, buf, size);
}
