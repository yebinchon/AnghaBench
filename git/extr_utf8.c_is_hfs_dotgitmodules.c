
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_hfs_dot_str (char const*,char*) ;

int is_hfs_dotgitmodules(const char *path)
{
 return is_hfs_dot_str(path, "gitmodules");
}
