
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile {int dummy; } ;


 struct hashfile* hashfd_throughput (int,char const*,int *) ;

struct hashfile *hashfd(int fd, const char *name)
{
 return hashfd_throughput(fd, name, ((void*)0));
}
