
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_pack_file {int pack_name; int refcount; } ;


 int assert (int ) ;
 int git__mwindow_mutex ;
 int git__pack_cache ;
 int git_atomic_dec (int *) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int git_packfile_free (struct git_pack_file*) ;
 int git_strmap_delete (int ,int ) ;
 int git_strmap_exists (int ,int ) ;

void git_mwindow_put_pack(struct git_pack_file *pack)
{
 int count;

 if (git_mutex_lock(&git__mwindow_mutex) < 0)
  return;


 assert(git__pack_cache);


 assert(git_strmap_exists(git__pack_cache, pack->pack_name));

 count = git_atomic_dec(&pack->refcount);
 if (count == 0) {
  git_strmap_delete(git__pack_cache, pack->pack_name);
  git_packfile_free(pack);
 }

 git_mutex_unlock(&git__mwindow_mutex);
 return;
}
