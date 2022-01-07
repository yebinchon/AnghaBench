
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int generate_info_refs ;
 char* git_pathdup (char*) ;
 int update_info_file (char*,int ,int) ;

__attribute__((used)) static int update_info_refs(int force)
{
 char *path = git_pathdup("info/refs");
 int ret = update_info_file(path, generate_info_refs, force);
 free(path);
 return ret;
}
