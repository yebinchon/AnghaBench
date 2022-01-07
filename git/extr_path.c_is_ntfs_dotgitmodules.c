
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_ntfs_dot_str (char const*,char*,char*) ;

int is_ntfs_dotgitmodules(const char *name)
{
 return is_ntfs_dot_str(name, "gitmodules", "gi7eba");
}
