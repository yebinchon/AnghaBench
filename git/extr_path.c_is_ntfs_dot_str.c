
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_ntfs_dot_generic (char const*,char const*,int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int is_ntfs_dot_str(const char *name, const char *dotgit_name,
      const char *dotgit_ntfs_shortname_prefix)
{
 return is_ntfs_dot_generic(name, dotgit_name, strlen(dotgit_name),
       dotgit_ntfs_shortname_prefix);
}
