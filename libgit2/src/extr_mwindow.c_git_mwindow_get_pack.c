
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_pack_file {int pack_name; int refcount; } ;


 int GIT_ERROR_OS ;
 int git__free (char*) ;
 int git__mwindow_mutex ;
 int git__pack_cache ;
 int git_atomic_inc (int *) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int git_packfile__name (char**,char const*) ;
 int git_packfile_alloc (struct git_pack_file**,char const*) ;
 int git_packfile_free (struct git_pack_file*) ;
 struct git_pack_file* git_strmap_get (int ,char*) ;
 int git_strmap_set (int ,int ,struct git_pack_file*) ;

int git_mwindow_get_pack(struct git_pack_file **out, const char *path)
{
 struct git_pack_file *pack;
 char *packname;
 int error;

 if ((error = git_packfile__name(&packname, path)) < 0)
  return error;

 if (git_mutex_lock(&git__mwindow_mutex) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to lock mwindow mutex");
  return -1;
 }

 pack = git_strmap_get(git__pack_cache, packname);
 git__free(packname);

 if (pack != ((void*)0)) {
  git_atomic_inc(&pack->refcount);
  git_mutex_unlock(&git__mwindow_mutex);
  *out = pack;
  return 0;
 }


 if ((error = git_packfile_alloc(&pack, path)) < 0) {
  git_mutex_unlock(&git__mwindow_mutex);
  return error;
 }

 git_atomic_inc(&pack->refcount);

 error = git_strmap_set(git__pack_cache, pack->pack_name, pack);
 git_mutex_unlock(&git__mwindow_mutex);

 if (error < 0) {
  git_packfile_free(pack);
  return -1;
 }

 *out = pack;
 return 0;
}
