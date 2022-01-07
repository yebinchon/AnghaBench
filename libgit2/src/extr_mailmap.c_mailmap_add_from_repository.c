
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ is_bare; } ;
typedef TYPE_1__ git_repository ;
typedef int git_mailmap ;
typedef int git_config ;
struct TYPE_12__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int MM_BLOB_CONFIG ;
 char* MM_BLOB_DEFAULT ;
 char const* MM_FILE ;
 int MM_FILE_CONFIG ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_get_path (TYPE_2__*,int *,int ) ;
 scalar_t__ git_config_get_string_buf (TYPE_2__*,int *,int ) ;
 scalar_t__ git_repository_config (int **,TYPE_1__*) ;
 int mailmap_add_blob (int *,TYPE_1__*,char const*) ;
 int mailmap_add_file_ondisk (int *,char const*,TYPE_1__*) ;

__attribute__((used)) static void mailmap_add_from_repository(git_mailmap *mm, git_repository *repo)
{
 git_config *config = ((void*)0);
 git_buf rev_buf = GIT_BUF_INIT;
 git_buf path_buf = GIT_BUF_INIT;
 const char *rev = ((void*)0);
 const char *path = ((void*)0);

 assert(mm && repo);


 if (repo->is_bare)
  rev = MM_BLOB_DEFAULT;


 if (git_repository_config(&config, repo) == 0) {
  if (git_config_get_string_buf(&rev_buf, config, MM_BLOB_CONFIG) == 0)
   rev = rev_buf.ptr;
  if (git_config_get_path(&path_buf, config, MM_FILE_CONFIG) == 0)
   path = path_buf.ptr;
 }
 if (!repo->is_bare)
  mailmap_add_file_ondisk(mm, MM_FILE, repo);
 if (rev != ((void*)0))
  mailmap_add_blob(mm, repo, rev);
 if (path != ((void*)0))
  mailmap_add_file_ondisk(mm, path, repo);

 git_buf_dispose(&rev_buf);
 git_buf_dispose(&path_buf);
 git_config_free(config);
}
