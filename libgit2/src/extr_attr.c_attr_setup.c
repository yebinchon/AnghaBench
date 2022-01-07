
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
typedef int git_index ;
struct TYPE_12__ {char const* ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_13__ {int init_setup; } ;
typedef TYPE_2__ git_attr_session ;
struct TYPE_14__ {char const* cfg_attr_file; } ;


 int GIT_ATTR_CHECK_INCLUDE_HEAD ;
 char const* GIT_ATTR_FILE ;
 char const* GIT_ATTR_FILE_INREPO ;
 int GIT_ATTR_FILE__FROM_FILE ;
 int GIT_ATTR_FILE__FROM_HEAD ;
 int GIT_ATTR_FILE__FROM_INDEX ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_REPOSITORY_ITEM_INFO ;
 int git_attr_cache__init (int *) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 TYPE_7__* git_repository_attr_cache (int *) ;
 int git_repository_index__weakptr (int **,int *) ;
 int git_repository_item_path (TYPE_1__*,int *,int ) ;
 char* git_repository_workdir (int *) ;
 int preload_attr_file (int *,TYPE_2__*,int ,char const*,char const*,int) ;
 int system_attr_file (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int attr_setup(
 git_repository *repo,
 git_attr_session *attr_session,
 uint32_t flags)
{
 git_buf path = GIT_BUF_INIT;
 git_index *idx = ((void*)0);
 const char *workdir;
 int error = 0;

 if (attr_session && attr_session->init_setup)
  return 0;

 if ((error = git_attr_cache__init(repo)) < 0)
  return error;






 if ((error = system_attr_file(&path, attr_session)) < 0 ||
     (error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
           ((void*)0), path.ptr, 1)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto out;
 }

 if ((error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
           ((void*)0), git_repository_attr_cache(repo)->cfg_attr_file, 1)) < 0)
  goto out;

 git_buf_clear(&path);
 if ((error = git_repository_item_path(&path, repo, GIT_REPOSITORY_ITEM_INFO)) < 0 ||
     (error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
           path.ptr, GIT_ATTR_FILE_INREPO, 1)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto out;
 }

 if ((workdir = git_repository_workdir(repo)) != ((void*)0) &&
     (error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_FILE,
           workdir, GIT_ATTR_FILE, 1)) < 0)
   goto out;

 if ((error = git_repository_index__weakptr(&idx, repo)) < 0 ||
     (error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_INDEX,
           ((void*)0), GIT_ATTR_FILE, 1)) < 0)
   goto out;

 if ((flags & GIT_ATTR_CHECK_INCLUDE_HEAD) != 0 &&
     (error = preload_attr_file(repo, attr_session, GIT_ATTR_FILE__FROM_HEAD,
           ((void*)0), GIT_ATTR_FILE, 1)) < 0)
  goto out;

 if (attr_session)
  attr_session->init_setup = 1;

out:
 git_buf_dispose(&path);

 return error;
}
