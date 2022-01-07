
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 int rmdir_or_warn (char const*) ;
 int unlink_or_warn (char const*) ;

int remove_or_warn(unsigned int mode, const char *file)
{
 return S_ISGITLINK(mode) ? rmdir_or_warn(file) : unlink_or_warn(file);
}
