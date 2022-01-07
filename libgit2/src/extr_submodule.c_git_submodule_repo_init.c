
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; int repo; int name; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;
typedef int git_config ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_printf (TYPE_2__*,char*,int ) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,int ) ;
 int git_repository_config_snapshot (int **,int ) ;
 int submodule_repo_init (int **,int ,int ,char const*,int) ;

int git_submodule_repo_init(
 git_repository **out,
 const git_submodule *sm,
 int use_gitlink)
{
 int error;
 git_repository *sub_repo = ((void*)0);
 const char *configured_url;
 git_config *cfg = ((void*)0);
 git_buf buf = GIT_BUF_INIT;

 assert(out && sm);


 if ((error = git_buf_printf(&buf, "submodule.%s.url", sm->name)) < 0 ||
  (error = git_repository_config_snapshot(&cfg, sm->repo)) < 0 ||
  (error = git_config_get_string(&configured_url, cfg, buf.ptr)) < 0 ||
  (error = submodule_repo_init(&sub_repo, sm->repo, sm->path, configured_url, use_gitlink)) < 0)
  goto done;

 *out = sub_repo;

done:
 git_config_free(cfg);
 git_buf_dispose(&buf);
 return error;
}
