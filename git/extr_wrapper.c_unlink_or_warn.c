
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unlink (char const*) ;
 int warn_if_unremovable (char*,char const*,int ) ;

int unlink_or_warn(const char *file)
{
 return warn_if_unremovable("unlink", file, unlink(file));
}
