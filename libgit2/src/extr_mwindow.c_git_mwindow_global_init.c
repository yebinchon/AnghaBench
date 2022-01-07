
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int git__on_shutdown (int ) ;
 int git__pack_cache ;
 int git_mwindow_files_free ;
 int git_strmap_new (int *) ;

int git_mwindow_global_init(void)
{
 assert(!git__pack_cache);

 git__on_shutdown(git_mwindow_files_free);
 return git_strmap_new(&git__pack_cache);
}
