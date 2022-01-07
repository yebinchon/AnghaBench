
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_hfs_dot_generic (char const*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int is_hfs_dot_str(const char *path, const char *needle)
{
 return is_hfs_dot_generic(path, needle, strlen(needle));
}
