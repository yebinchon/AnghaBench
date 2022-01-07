
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_hfs_dotgitmodules (char const*) ;
 scalar_t__ is_ntfs_dotgitmodules (char const*) ;

__attribute__((used)) static int is_dotgitmodules(const char *path)
{
 return is_hfs_dotgitmodules(path) || is_ntfs_dotgitmodules(path);
}
