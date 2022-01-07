
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int open (char const*,int,unsigned int) ;

__attribute__((used)) static int create_file(const char *path, unsigned int mode)
{
 mode = (mode & 0100) ? 0777 : 0666;
 return open(path, O_WRONLY | O_CREAT | O_EXCL, mode);
}
