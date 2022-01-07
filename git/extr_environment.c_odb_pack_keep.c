
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int open (char const*,int,int) ;
 int safe_create_leading_directories_const (char const*) ;

int odb_pack_keep(const char *name)
{
 int fd;

 fd = open(name, O_RDWR|O_CREAT|O_EXCL, 0600);
 if (0 <= fd)
  return fd;


 safe_create_leading_directories_const(name);
 return open(name, O_RDWR|O_CREAT|O_EXCL, 0600);
}
