
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * git_index_reuc_get_bypath (int ,char*) ;
 int repo_index ;

__attribute__((used)) static int reuc_entry_exists(void)
{
 return (git_index_reuc_get_bypath(repo_index, "newfile.txt") != ((void*)0));
}
