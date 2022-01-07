
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int O_BINARY ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int open (char const*,int,int ) ;

int p_creat(const char *path, mode_t mode)
{
 return open(path, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY | O_CLOEXEC, mode);
}
