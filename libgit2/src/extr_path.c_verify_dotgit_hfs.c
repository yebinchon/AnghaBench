
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_STRLEN (char*) ;
 int verify_dotgit_hfs_generic (char const*,size_t,char*,int ) ;

__attribute__((used)) static bool verify_dotgit_hfs(const char *path, size_t len)
{
 return verify_dotgit_hfs_generic(path, len, "git", CONST_STRLEN("git"));
}
