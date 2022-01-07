
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 int * git__pack_cache ;
 int git_strmap_free (int *) ;

__attribute__((used)) static void git_mwindow_files_free(void)
{
 git_strmap *tmp = git__pack_cache;

 git__pack_cache = ((void*)0);
 git_strmap_free(tmp);
}
